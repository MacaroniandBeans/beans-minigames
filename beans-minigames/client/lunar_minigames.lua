-- Standardized XP-based minigame wrappers for lunar_minigames

local function AwaitResult(callback)
    local p = promise.new()
    CreateThread(function()
        local success = callback()
        p:resolve(success)
    end)
    return Citizen.Await(p)
end

-- KEYS
local function PlayKeysGame()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["lunar_minigames"]["keys"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    CreateThread(function()
        result:resolve(exports.lunar_minigames:keys(tier.keys, tier.time))
    end)
    return Citizen.Await(result)
end

exports('PlayKeysGame', PlayKeysGame)
Config.Minigames["lunar_minigames"]["keys"].Game = PlayKeysGame

-- SORT
local function PlaySortGame()
    return AwaitResult(function()
        local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
        local config = Config.Minigames["lunar_minigames"]["sort"]
        local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
        return exports.lunar_minigames:sort(tier.length, tier.maxNumber, tier.duration)
    end)
end

exports('PlaySortGame', PlaySortGame)
Config.Minigames["lunar_minigames"]["sort"].Game = PlaySortGame

-- LOCKPICK
local function PlayLockpickGame()
    return AwaitResult(function()
        local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
        local config = Config.Minigames["lunar_minigames"]["lockpick"]
        local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
        return exports.lunar_minigames:lockpick(tier.rings, tier.duration)
    end)
end

exports('PlayLockpickGame', PlayLockpickGame)
Config.Minigames["lunar_minigames"]["lockpick"].Game = PlayLockpickGame

-- PINCRACKER
local function PlayPinCrackerGame()
    return AwaitResult(function()
        local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
        local config = Config.Minigames["lunar_minigames"]["pincracker"]
        local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
        return exports.lunar_minigames:pinCracker(tier.digits, tier.duration)
    end)
end

exports('PlayPinCrackerGame', PlayPinCrackerGame)
Config.Minigames["lunar_minigames"]["pincracker"].Game = PlayPinCrackerGame

-- TERMINAL
local function PlayTerminalGame()
    return AwaitResult(function()
        local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
        local config = Config.Minigames["lunar_minigames"]["terminal"]
        local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
        return exports.lunar_minigames:terminal(tier.length, tier.count, tier.questions, tier.duration)
    end)
end

exports('PlayTerminalGame', PlayTerminalGame)
Config.Minigames["lunar_minigames"]["terminal"].Game = PlayTerminalGame

-- WORDS
local function PlayWordsGame()
    return AwaitResult(function()
        local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
        local config = Config.Minigames["lunar_minigames"]["words"]
        local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)
        return exports.lunar_minigames:words(tier.words, tier.duration)
    end)
end

exports('PlayWordsGame', PlayWordsGame)
Config.Minigames["lunar_minigames"]["words"].Game = PlayWordsGame
