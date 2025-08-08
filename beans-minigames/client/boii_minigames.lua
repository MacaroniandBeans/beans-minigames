if GetResourceState('boii_minigames') ~= 'started' then
    print("^3[Minigames]^0 boii_minigames is not started.")
    return
end

Config.Minigames = Config.Minigames or {}
Config.Minigames["boii_minigames"] = Config.Minigames["boii_minigames"] or {}

-- ANAGRAM
local function PlayBoiiAnagram()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["boii_minigames"]["anagram"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['boii_minigames']:anagram({
        style = 'default',
        loading_time = tier.loading,
        difficulty = tier.difficulty,
        guesses = tier.guesses,
        timer = tier.timer
    }, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

-- BUTTON MASH
local function PlayBoiiButtonMash()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["boii_minigames"]["button_mash"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['boii_minigames']:button_mash({
        style = 'default',
        difficulty = tier.difficulty
    }, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

-- CHIP HACK
local function PlayBoiiChipHack()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["boii_minigames"]["chip_hack"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['boii_minigames']:chip_hack({
        style = 'default',
        loading_time = tier.loading,
        chips = tier.chips,
        timer = tier.timer
    }, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

-- HANGMAN
local function PlayBoiiHangman()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["boii_minigames"]["hangman"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['boii_minigames']:hangman({
        style = 'default',
        loading_time = tier.loading,
        difficulty = tier.difficulty,
        guesses = tier.guesses,
        timer = tier.timer
    }, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

-- KEY DROP
local function PlayBoiiKeyDrop()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["boii_minigames"]["key_drop"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['boii_minigames']:key_drop({
        style = 'default',
        score_limit = tier.limit,
        miss_limit = tier.misses,
        fall_delay = tier.delay,
        new_letter_delay = tier.letter
    }, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

-- PINCODE
local function PlayBoiiPincode()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["boii_minigames"]["pincode"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['boii_minigames']:pincode({
        style = 'default',
        length = tier.length,
        timer = tier.time
    }, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

-- Export all boii minigame functions
exports('PlayBoiiAnagram', PlayBoiiAnagram)
exports('PlayBoiiButtonMash', PlayBoiiButtonMash)
exports('PlayBoiiChipHack', PlayBoiiChipHack)
exports('PlayBoiiHangman', PlayBoiiHangman)
exports('PlayBoiiKeyDrop', PlayBoiiKeyDrop)
exports('PlayBoiiPincode', PlayBoiiPincode)

-- Attach Game functions to config
Config.Minigames["boii_minigames"]["anagram"].Game = PlayBoiiAnagram
Config.Minigames["boii_minigames"]["button_mash"].Game = PlayBoiiButtonMash
Config.Minigames["boii_minigames"]["chip_hack"].Game = PlayBoiiChipHack
Config.Minigames["boii_minigames"]["hangman"].Game = PlayBoiiHangman
Config.Minigames["boii_minigames"]["key_drop"].Game = PlayBoiiKeyDrop
Config.Minigames["boii_minigames"]["pincode"].Game = PlayBoiiPincode
