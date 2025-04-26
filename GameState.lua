local addonName, addon = ...

-- Create main state tracking frame
local GameState = CreateFrame("Frame")
addon.GameState = GameState

-- Initialize state tables
-- These contain everything we want to know about the game state.
local state = {
    -- Current Time and Timing Information
    time = {
        current = 0,
        lastUpdate = 0,
        worldLag = 0,  -- From GetNetStats
        gcd = {
            start_time = 0,
            duration = 0,
            end_time = 0,
        },
        combat = {
            start_time = 0,
            duration = 0,
            isActive = false,
        },
        outOfCombat = {
            start = 0,
            duration = 0,
        },
    },

    -- Current Unit States
    units = {
        player = {
            health = 0,
            maxHealth = 0,
            power = 0,
            maxPower = 0,
            position = { x = 0, y = 0, z = 0 },
            casting = {
                spellID = 0,
                startTime = 0,
                endTime = 0,
                isChannel = false,
            },
            cooldowns = {},
            buffs = {},
            debuffs = {},
        },
        target = nil, -- GUID for the target unit
        focus = nil, -- GUID for the focus unit
        mouseover = nil, -- GUID for the mouseover unit
        enemies = {},  -- Tracks all hostile units
        allies = {},   -- Tracks all friendly units
    },

    -- Combat State
    combat = {
        isActive = false,
        enemies = {},  -- Currently active enemies
        threat = {},   -- Threat information for enemies
        damage = {},   -- Recent damage events
        healing = {},  -- Recent healing events
        interrupts = {}, -- Recent interrupt events
        cc = {},       -- Active crowd control effects
    },

    -- Encounter State
    encounter = {
        isActive = false,
        name = "",
        type = "",     -- "boss", "trash", "world"
        phase = 1,
        bossMods = {
            enabled = false,
            pullTimer = 0,
            events = {}, -- Boss mod events
        },
    },

    -- Future Events Timeline
    timeline = {
        events = {},   -- Sorted by time
        nextAction = {
            time = 0,
            type = "",  -- "gcd", "cast", "channel", "boss_event", "enemy_cast"
            data = {},
        },
    },

    -- Environment State
    environment = {
        instance = {
            type = "",
            name = "",
            difficulty = "",
            size = 0,
        },
        weather = "",
        timeOfDay = 0,
        position = {
            mapID = 0,
            x = 0,
            y = 0,
            z = 0,
        },
    },
}

-- Helper function to clean up old events
local function cleanupTimeline(currentTime)
    local i = 1
    while i <= #state.timeline.events do
        if state.timeline.events[i].time <= currentTime then
            table.remove(state.timeline.events, i)
        else
            i = i + 1
        end
    end
end

-- Add an upcoming event to the timeline
function GameState:AddTimelineEvent(eventType, time, data)
    local event = {
        type = eventType,
        time = time,
        data = data
    }
    
    -- Insert maintaining sort by time
    local inserted = false
    for i, existingEvent in ipairs(state.timeline.events) do
        if time < existingEvent.time then
            table.insert(state.timeline.events, i, event)
            inserted = true
            break
        end
    end
    
    if not inserted then
        table.insert(state.timeline.events, event)
    end

    -- Update next action if this is earlier
    if not state.timeline.nextAction.time or time < state.timeline.nextAction.time then
        state.timeline.nextAction = event
    end
end

-- Update unit information
function GameState:UpdateUnit(guid, info)
    if not state.units[guid] then
        state.units[guid] = {}
    end
    
    for k, v in pairs(info) do
        state.units[guid][k] = v
    end
end

-- Remove unit from tracking
function GameState:RemoveUnit(guid)
    state.units[guid] = nil
end

-- Get unit information
function GameState:GetUnit(guid)
    return state.units[guid]
end

-- Get all tracked units
function GameState:GetAllUnits()
    return state.units
end

-- Get upcoming events
function GameState:GetTimelineEvents()
    return state.timeline.events
end

-- Get next action time
function GameState:GetNextActionTime()
    return state.timeline.nextAction.time
end

-- Update cooldown information
function GameState:UpdateCooldown(spellID, start, duration)
    state.units.player.cooldowns[spellID] = {
        start = start,
        duration = duration,
        end = start + duration
    }
    
    -- Add to timeline if it's a future event
    if start + duration > state.time.current then
        self:AddTimelineEvent("cooldown", start + duration, {
            spellID = spellID,
            type = "cooldown"
        })
    end
end

-- Get cooldown information
function GameState:GetCooldown(spellID)
    return state.units.player.cooldowns[spellID]
end

-- Event handlers
function GameState:UNIT_SPELLCAST_SUCCEEDED(unit, _, spellID)
    if unit == "player" then
        -- Update GCD
        local start, duration = GetSpellCooldown(61304) -- GCD spell ID
        state.time.gcd.start = start
        state.time.gcd.duration = duration
        state.time.gcd.end = start + duration
        
        -- Add GCD end event
        if duration > 0 then
            self:AddTimelineEvent("gcd", start + duration, {
                type = "gcd",
                spellID = spellID
            })
        end
    end
end

function GameState:COMBAT_LOG_EVENT_UNFILTERED()
    local timestamp, eventType, _, sourceGUID, sourceName, sourceFlags, 
          _, destGUID, destName, destFlags = CombatLogGetCurrentEventInfo()
          
    -- Track units entering/leaving combat
    if eventType == "UNIT_DIED" then
        self:RemoveUnit(destGUID)
    elseif eventType:match("_DAMAGE") or eventType:match("_HEAL") then
        -- Update source unit
        self:UpdateUnit(sourceGUID, {
            name = sourceName,
            flags = sourceFlags,
            lastSeen = timestamp,
        })
        
        -- Update destination unit
        if destGUID then
            self:UpdateUnit(destGUID, {
                name = destName,
                flags = destFlags,
                lastSeen = timestamp,
            })
        end
    end
end

function GameState:NAME_PLATE_UNIT_ADDED(unit)
    local guid = UnitGUID(unit)
    if guid then
        self:UpdateUnit(guid, {
            name = UnitName(unit),
            class = select(2, UnitClass(unit)),
            isHostile = UnitIsEnemy("player", unit),
            hasNameplate = true,
            health = UnitHealth(unit),
            maxHealth = UnitHealthMax(unit),
            threat = UnitThreatSituation("player", unit),
        })
    end
end

function GameState:NAME_PLATE_UNIT_REMOVED(unit)
    local guid = UnitGUID(unit)
    if guid then
        local unitInfo = state.units[guid]
        if unitInfo then
            unitInfo.hasNameplate = false
        end
    end
end

-- Update current time and timing information
function GameState:UpdateTiming()
    local currentTime = GetTime()
    state.time.current = currentTime
    state.time.lastUpdate = currentTime
    
    -- Update world lag
    local _, _, _, latency = GetNetStats()
    state.time.worldLag = latency / 1000
    
    -- Update combat duration
    if state.combat.isActive then
        state.time.combat.duration = currentTime - state.time.combat.start
    else
        state.time.outOfCombat.duration = currentTime - state.time.outOfCombat.start
    end
end

-- Register events
GameState:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
GameState:RegisterEvent("NAME_PLATE_UNIT_ADDED")
GameState:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
GameState:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
GameState:RegisterEvent("PLAYER_REGEN_ENABLED")
GameState:RegisterEvent("PLAYER_REGEN_DISABLED")
GameState:RegisterEvent("PLAYER_TARGET_CHANGED")
GameState:RegisterEvent("PLAYER_FOCUS_CHANGED")
GameState:RegisterEvent("UPDATE_MOUSEOVER_UNIT")

-- Set up event handler
GameState:SetScript("OnEvent", function(self, event, ...)
    if self[event] then
        self[event](self, ...)
    end
end)

-- Set up periodic updates
GameState:SetScript("OnUpdate", function(self, elapsed)
    self:UpdateTiming()
    cleanupTimeline(state.time.current)
end)

-- Return the module
return GameState 