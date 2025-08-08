if GetResourceState('ps-ui') ~= 'started' then
    print("^3[Minigames]^0 ps-ui is not started.")
    return
end

Config.Minigames = Config.Minigames or {}
Config.Minigames["ps-ui"] = Config.Minigames["ps-ui"] or {}

-- CIRCLE
local function PlayPsUICircle()
    local result = promise.new()
    print("Start Circle Game")

    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    print("Level:", level)

    local config = Config.Minigames["ps-ui"]["circle"]
local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)    print("Tier data:", json.encode(tier))

    exports['ps-ui']:Circle(function(success)
        print("Minigame success?", success)
        result:resolve(success)
    end, tier.circle, tier.speed)

    return Citizen.Await(result)
end

-- MAZE
local function PlayPsUIMaze()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["ps-ui"]["maze"]

local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
    exports['ps-ui']:Maze(function(success)
        result:resolve(success)
    end, tier.time)

    return Citizen.Await(result)
end

-- VAR HACK
local function PlayPsUIVarHack()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["ps-ui"]["var"]

local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
    exports['ps-ui']:VarHack(function(success)
        result:resolve(success)
    end, tier.squares, tier.time)

    return Citizen.Await(result)
end

-- THERMITE
local function PlayPsUIThermite()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["ps-ui"]["thermite"]

local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
    exports['ps-ui']:Thermite(function(success)
        result:resolve(success)
    end, tier.time, tier.grid, tier.fail)

    return Citizen.Await(result)
end

-- SCRAMBLER
local function PlayPsUIScrambler()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["ps-ui"]["scrambler"]

local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
    exports['ps-ui']:Scrambler(function(success)
        result:resolve(success)
    end, tier.type, tier.time, tier.form)

    return Citizen.Await(result)
end

-- Export all minigame functions for external use
exports('PlayPsUICircle', PlayPsUICircle)
exports('PlayPsUIMaze', PlayPsUIMaze)
exports('PlayPsUIVarHack', PlayPsUIVarHack)
exports('PlayPsUIThermite', PlayPsUIThermite)
exports('PlayPsUIScrambler', PlayPsUIScrambler)

-- Attach Game functions to config
Config.Minigames["ps-ui"]["circle"].Game = PlayPsUICircle
Config.Minigames["ps-ui"]["maze"].Game = PlayPsUIMaze
Config.Minigames["ps-ui"]["var"].Game = PlayPsUIVarHack
Config.Minigames["ps-ui"]["thermite"].Game = PlayPsUIThermite
Config.Minigames["ps-ui"]["scrambler"].Game = PlayPsUIScrambler