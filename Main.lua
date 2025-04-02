-- Synecdoche Game Loop Framework
local addonName, addon = ...
local _G = _G

-- Create the main frame that will handle all our events and timers
local mainFrame = CreateFrame("Frame")
mainFrame:SetScript("OnEvent", function(self, event, ...)
    if addon.eventHandlers[event] then
        for _, handler in ipairs(addon.eventHandlers[event]) do
            handler(...)
        end
    end
end)

-- Initialize the addon namespace
addon.eventHandlers = {}
addon.state = {}
addon.updateInterval = 1000 -- Default to 1 second between full state updates
addon.lastUpdate = 0

-- Create debug frame
local debugFrame = CreateFrame("Frame", "SynecdocheDebugFrame", UIParent, "BackdropTemplate")
debugFrame:SetSize(300, 200)
debugFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 10, -10)
debugFrame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 }
})
debugFrame:SetBackdropColor(0, 0, 0, 0.8)
debugFrame:SetBackdropBorderColor(1, 1, 1, 1)
debugFrame:SetMovable(true)
debugFrame:EnableMouse(true)
debugFrame:RegisterForDrag("LeftButton")
debugFrame:SetScript("OnDragStart", debugFrame.StartMoving)
debugFrame:SetScript("OnDragStop", debugFrame.StopMovingOrSizing)

-- Create title
local titleText = debugFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
titleText:SetPoint("TOP", debugFrame, "TOP", 0, -15)
titleText:SetText("Synecdoche Debug")

-- Create content text
local contentText = debugFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
contentText:SetPoint("TOPLEFT", debugFrame, "TOPLEFT", 15, -35)
contentText:SetJustifyH("LEFT")
contentText:SetWidth(270)

-- Create enemy health frame
local enemyFrame = CreateFrame("Frame", "SynecdocheEnemyFrame", UIParent, "BackdropTemplate")
enemyFrame:SetSize(200, 100)
enemyFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -10, -10)
enemyFrame:SetBackdrop({
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 }
})
enemyFrame:SetBackdropColor(0, 0, 0, 0.8)
enemyFrame:SetBackdropBorderColor(1, 1, 1, 1)
enemyFrame:SetMovable(true)
enemyFrame:EnableMouse(true)
enemyFrame:RegisterForDrag("LeftButton")
enemyFrame:SetScript("OnDragStart", enemyFrame.StartMoving)
enemyFrame:SetScript("OnDragStop", enemyFrame.StopMovingOrSizing)

-- Create enemy title
local enemyTitle = enemyFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
enemyTitle:SetPoint("TOP", enemyFrame, "TOP", 0, -15)
enemyTitle:SetText("Enemy Health")

-- Create container for health bars
local healthBarsContainer = CreateFrame("Frame", nil, enemyFrame)
healthBarsContainer:SetPoint("TOPLEFT", enemyFrame, "TOPLEFT", 15, -35)
healthBarsContainer:SetSize(170, 50)

-- Health bar template
local function CreateHealthBar(parent, index)
    local bar = CreateFrame("StatusBar", nil, parent)
    bar:SetSize(170, 15)
    bar:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, -(index-1) * 20)
    bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    bar:SetStatusBarColor(1, 0, 0)
    bar:SetMinMaxValues(0, 100)
    
    local nameText = bar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    nameText:SetPoint("LEFT", bar, "LEFT", 2, 0)
    nameText:SetJustifyH("LEFT")
    
    local healthText = bar:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
    healthText:SetPoint("RIGHT", bar, "RIGHT", -2, 0)
    healthText:SetJustifyH("RIGHT")
    
    bar.nameText = nameText
    bar.healthText = healthText
    return bar
end

-- Create health bars
local healthBars = {}
for i = 1, 5 do
    healthBars[i] = CreateHealthBar(healthBarsContainer, i)
    healthBars[i]:Hide()
end

-- Function to update health bars
local function UpdateHealthBars()
    local index = 1
    for _, nameplate in ipairs(C_NamePlate.GetNamePlates()) do
        if nameplate.UnitFrame and nameplate.UnitFrame.unit then
            local unit = nameplate.UnitFrame.unit
            
            -- Check if unit is hostile and in combat with player
            if UnitCanAttack("player", unit) and UnitThreatSituation("player", unit) then
                local health = UnitHealth(unit)
                local maxHealth = UnitHealthMax(unit)
                local name = UnitName(unit)
                
                if health and maxHealth and name then
                    local bar = healthBars[index]
                    if bar then
                        bar:Show()
                        bar:SetValue(health)
                        bar:SetMinMaxValues(0, maxHealth)
                        
                        -- Get threat information
                        local threat = UnitThreatSituation("player", unit)
                        local threatText = ""
                        if threat then
                            threatText = string.format("(%d)", threat)
                        end
                        
                        bar.nameText:SetText(name .. " " .. threatText)
                        bar.healthText:SetText(string.format("%d%%", (health/maxHealth)*100))
                        
                        -- Color the bar based on threat level
                        if threat then
                            local r, g, b = GetThreatStatusColor(threat)
                            bar:SetStatusBarColor(r, g, b)
                        else
                            bar:SetStatusBarColor(1, 0, 0)
                        end
                        
                        index = index + 1
                    end
                end
            end
        end
    end
    
    -- Hide unused bars
    for i = index, #healthBars do
        healthBars[i]:Hide()
    end
end

-- Function to register an event handler
function addon:RegisterEventHandler(event, handler)
    if not self.eventHandlers[event] then
        self.eventHandlers[event] = {}
        mainFrame:RegisterEvent(event)
    end
    table.insert(self.eventHandlers[event], handler)
end

-- Function to set the update interval
function addon:SetUpdateInterval(interval)
    self.updateInterval = interval
end

-- Function to format debug text
local function formatDebugText(state)
    local lines = {}
    table.insert(lines, "State Update: " .. date("%H:%M:%S"))
    table.insert(lines, "Update Interval: " .. addon.updateInterval .. "ms")
    table.insert(lines, "Last Update: " .. string.format("%.2f", GetTime() - addon.lastUpdate) .. "s ago")
    table.insert(lines, "")
    
    -- Add any state information
    for key, value in pairs(state) do
        if type(value) == "table" then
            table.insert(lines, key .. ":")
            for k, v in pairs(value) do
                table.insert(lines, "  " .. k .. ": " .. tostring(v))
            end
        else
            table.insert(lines, key .. ": " .. tostring(value))
        end
    end
    
    return table.concat(lines, "\n")
end

-- Function to perform a full state update
function addon:PerformFullStateUpdate()
    -- Update timestamp
    self.lastUpdate = GetTime()
    
    -- Update debug display
    contentText:SetText(formatDebugText(self.state))
    
    -- Update health bars
    UpdateHealthBars()
end

-- Set up the OnUpdate script to handle periodic updates
mainFrame:SetScript("OnUpdate", function(self, elapsed)
    local currentTime = GetTime()
    if currentTime - addon.lastUpdate >= (addon.updateInterval / 1000) then
        addon:PerformFullStateUpdate()
    end
end)

-- Initialize the addon
function addon:OnEnable()
    -- This will be called when the addon is loaded
    self.lastUpdate = GetTime()
    
    -- Initialize some example state
    self.state = {
        playerHealth = UnitHealth("player"),
        playerMaxHealth = UnitHealthMax("player"),
        playerMana = UnitPower("player"),
        playerMaxMana = UnitPowerMax("player"),
        playerLevel = UnitLevel("player"),
        playerClass = UnitClass("player"),
        lastEvent = "None",
        eventCount = 0
    }
    
    -- Perform initial update
    self:PerformFullStateUpdate()
end

-- Register the addon's initialization
mainFrame:RegisterEvent("ADDON_LOADED")
addon:RegisterEventHandler("ADDON_LOADED", function(loadedAddonName)
    if loadedAddonName == addonName then
        addon:OnEnable()
    end
end)

-- Register some example events to demonstrate the system
addon:RegisterEventHandler("UNIT_HEALTH", function(unit)
    if unit == "player" then
        addon.state.playerHealth = UnitHealth("player")
        addon.state.lastEvent = "UNIT_HEALTH"
        addon.state.eventCount = addon.state.eventCount + 1
        addon:PerformFullStateUpdate()
    end
end)

addon:RegisterEventHandler("UNIT_POWER_UPDATE", function(unit)
    if unit == "player" then
        addon.state.playerMana = UnitPower("player")
        addon.state.lastEvent = "UNIT_POWER_UPDATE"
        addon.state.eventCount = addon.state.eventCount + 1
        addon:PerformFullStateUpdate()
    end
end)

-- Register events for enemy health updates
addon:RegisterEventHandler("NAME_PLATE_UNIT_ADDED", function(unit)
    addon:PerformFullStateUpdate()
end)

addon:RegisterEventHandler("NAME_PLATE_UNIT_REMOVED", function(unit)
    addon:PerformFullStateUpdate()
end)

addon:RegisterEventHandler("UNIT_HEALTH", function(unit)
    addon:PerformFullStateUpdate()
end)

-- Add threat update events
addon:RegisterEventHandler("UNIT_THREAT_SITUATION_UPDATE", function(unit)
    addon:PerformFullStateUpdate()
end)

addon:RegisterEventHandler("UNIT_THREAT_LIST_UPDATE", function(unit)
    addon:PerformFullStateUpdate()
end)
