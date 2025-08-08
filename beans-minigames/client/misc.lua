if GetResourceState('hacking') ~= 'started' then
    print("^3[Minigames]^0 hacking (creator) is not started.")
    return
end

Config.Minigames = Config.Minigames or {}
Config.Minigames["misc"] = Config.Minigames["misc"] or {}

-- Creator Minigame
local function PlayCreatorMinigame()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["hacking-opengame"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['hacking']:OpenHackingGame(tier.time or 30, tier.grid or 3, tier.lives or 3, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["hacking-opengame"].Game = PlayCreatorMinigame
exports('PlayCreatorMinigame', PlayCreatorMinigame)

-- Casino Hack
local function PlayCasinoHack()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["casinohack"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports['casinohack']:OpenHackingGame(tier.time or 30, function(success)
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["casinohack"].Game = PlayCasinoHack
exports('PlayCasinoHack', PlayCasinoHack)


-- Lights Out
local function PlayLightsOut()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["lightsout"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['lightsout']:StartLightsOut(tier.grid, tier.maxClicks)
    result:resolve(success)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["lightsout"].Game = PlayLightsOut
exports('PlayLightsOut', PlayLightsOut)

-- Calibrate Distributor
local function PlayCalibrateDistributor()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["distributor"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['calibrate-distributor']:startDistributor(true)
    result:resolve(success)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["distributor"].Game = PlayCalibrateDistributor
exports('PlayCalibrateDistributor', PlayCalibrateDistributor)


-- Memory Game
local function PlayMemoryGame()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["memorygame"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    exports["memorygame"]:thermiteminigame(tier.time, tier.gridsize, tier.blocks, tier.time,
        function() result:resolve(true) end,
        function() result:resolve(false) end
    )

    return Citizen.Await(result)
end

Config.Minigames["misc"]["memorygame"].Game = PlayMemoryGame
exports('PlayMemoryGame', PlayMemoryGame)

-- Numbers
local function PlayNumbers()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["numbers"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['numbers']:StartNumbersGame(tier.length, tier.timer, tier.show)
    result:resolve(success)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["numbers"].Game = PlayNumbers
exports('PlayNumbers', PlayNumbers)

-- Number Counter
local function PlayNumberCounter()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["numberCounter"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local gameData = {
        totalNumbers = tier.total,
        seconds = tier.seconds,
        timesToChangeNumbers = tier.changes,
        amountOfGames = tier.games,
        incrementByAmount = tier.increment,
    }

    local success = exports["pure-minigames"]:numberCounter(gameData)
    result:resolve(success)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["numberCounter"].Game = PlayNumberCounter
exports('PlayNumberCounter', PlayNumberCounter)


-- MHacking
local function PlayMHacking()
    local result = promise.new()

    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["misc"]["mhacking"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    -- Show the UI
    TriggerEvent('mhacking:show')

    -- Start game with difficulty tier values
    TriggerEvent('mhacking:start_custom', tier.solutionLength, tier.duration, tier.reshuffleInterval, function(success, timeLeft)
        TriggerEvent('mhacking:hide')
        result:resolve(success)
    end)

    return Citizen.Await(result)
end

Config.Minigames["misc"]["mhacking"].Game = PlayMHacking
exports('PlayMHacking', PlayMHacking)

