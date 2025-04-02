local addonName, addon = ...

-- Create main state tracking frame
local GameState = CreateFrame("Frame")
addon.GameState = GameState

-- Initialize state tables
local state = {
    instance = {}, -- tracks instance information
    units = {}, -- Tracks unit information by GUID
    events = {}, -- Upcoming events sorted by time
    cooldowns = {}, -- Player cooldown information
    gcd = {
        start = 0,
        duration = 0,
    },

    -- Also want:
    -- CombatTime (time since combat has started for the player)
    -- OutOfCombatTime() (time since combat has ended for the player)
    -- BossMods Pull Timer (time until the boss is pulled)
    -- World Lag (use GetNetStats)

    -- Recovery Timer (greater of remaining GCD time or the current cast)
    -- Lag Compensated Recovery Timer (recovery timer plus latency)
    -- want Current Target (may be null)
    -- want Current Focus (may be null)
    -- want Current Mouseover (may be null)
}

-- Helper function to clean up old events
local function cleanupEvents(currentTime)
    local i = 1
    while i <= #state.events do
        if state.events[i].time <= currentTime then
            table.remove(state.events, i)
        else
            i = i + 1
        end
    end
end

-- Add an upcoming event to the timeline
function GameState:AddEvent(eventType, time, data)
    local event = {
        type = eventType,
        time = time,
        data = data
    }
    
    -- Insert maintaining sort by time
    local inserted = false
    for i, existingEvent in ipairs(state.events) do
        if time < existingEvent.time then
            table.insert(state.events, i, event)
            inserted = true
            break
        end
    end
    
    if not inserted then
        table.insert(state.events, event)
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
function GameState:GetUpcomingEvents()
    return state.events
end

-- Update cooldown information
function GameState:UpdateCooldown(spellID, start, duration)
    state.cooldowns[spellID] = {
        start = start,
        duration = duration,
    }
end

-- Get cooldown information
function GameState:GetCooldown(spellID)
    return state.cooldowns[spellID]
end

-- Event handlers
function GameState:UNIT_SPELLCAST_SUCCEEDED(unit, _, spellID)
    if unit == "player" then
        -- Update GCD
        local start, duration = GetSpellCooldown(61304) -- GCD spell ID
        state.gcd.start = start
        state.gcd.duration = duration
        
        -- Add GCD end event
        if duration > 0 then
            self:AddEvent("GCD_END", start + duration)
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

-- Register events
GameState:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
GameState:RegisterEvent("NAME_PLATE_UNIT_ADDED")
GameState:RegisterEvent("NAME_PLATE_UNIT_REMOVED")
GameState:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")

-- Set up event handler
GameState:SetScript("OnEvent", function(self, event, ...)
    if self[event] then
        self[event](self, ...)
    end
end)

-- Set up periodic cleanup
GameState:SetScript("OnUpdate", function(self, elapsed)
    cleanupEvents(GetTime())
end)

-- Return the module
return GameState 