if GetResourceState('bd-minigames') ~= 'started' then
    print("^3[Minigames]^0 bd-minigames is not started.")
    return
end

Config.Minigames = Config.Minigames or {}
Config.Minigames["bd-minigames"] = Config.Minigames["bd-minigames"] or {}

-- LOCKPICK
local function PlayBdLockpick()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["bd-minigames"]["lockpick"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['bd-minigames']:Lockpick(tier.min or 2, tier.max or 5)
    result:resolve(success)
    return Citizen.Await(result)
end

-- CHOPPING
local function PlayBdChopping()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["bd-minigames"]["chopping"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['bd-minigames']:Chopping(tier.items or 12, tier.time or 30)
    result:resolve(success)
    return Citizen.Await(result)
end

-- PINCRACKER
local function PlayBdPincracker()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["bd-minigames"]["pincracker"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['bd-minigames']:PinCracker(tier.pins or 3, tier.time or 20)
    result:resolve(success)
    return Citizen.Await(result)
end

-- ROOFRUNNING
local function PlayBdRoofrunning()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["bd-minigames"]["roofrunning"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['bd-minigames']:RoofRunning(tier.rows or 3, tier.columns or 3, tier.time or 30)
    result:resolve(success)
    return Citizen.Await(result)
end

-- THERMITE
local function PlayBdThermite()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["bd-minigames"]["thermite"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['bd-minigames']:Thermite(tier.score or 15, tier.rows or 7, tier.columns or 7, tier.time or 40)
    result:resolve(success)
    return Citizen.Await(result)
end

-- TERMINAL
local function PlayBdTerminal()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["bd-minigames"]["terminal"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['bd-minigames']:Terminal(tier.rows or 4, tier.columns or 2, tier.view or 10, tier.type or 30, tier.answers or 4)
    result:resolve(success)
    return Citizen.Await(result)
end

-- Attach Game functions to config
Config.Minigames["bd-minigames"]["lockpick"] = { label = "Inspired Lockpick", Game = PlayBdLockpick, difficulty = {} }
Config.Minigames["bd-minigames"]["chopping"] = { label = "Inspired Chopping", Game = PlayBdChopping, difficulty = {} }
Config.Minigames["bd-minigames"]["pincracker"] = { label = "Inspired Pin Cracker", Game = PlayBdPincracker, difficulty = {} }
Config.Minigames["bd-minigames"]["roofrunning"] = { label = "Inspired Roof Running", Game = PlayBdRoofrunning, difficulty = {} }
Config.Minigames["bd-minigames"]["thermite"] = { label = "Inspired Thermite", Game = PlayBdThermite, difficulty = {} }
Config.Minigames["bd-minigames"]["terminal"] = { label = "Inspired Terminal", Game = PlayBdTerminal, difficulty = {} }
