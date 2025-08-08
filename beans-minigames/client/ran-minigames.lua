if GetResourceState('ran-minigames') ~= 'started' then
    print("^3[Minigames]^0 ran-minigames is not started.")
    return
end

Config.Minigames = Config.Minigames or {}
Config.Minigames["ran-minigames"] = Config.Minigames["ran-minigames"] or {}

-- MEMORY CARD
local function PlayRanMemoryCard()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["ran-minigames"]["memorycard"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['ran-minigames']:MemoryCard(tier.time)
    result:resolve(success)

    return Citizen.Await(result)
end

-- MINE SWEEP
local function PlayRanMineSweep()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["ran-minigames"]["minesweep"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['ran-minigames']:MineSweep(tier.money, tier.bomb, tier.fail, tier.area)
    result:resolve(success)

    return Citizen.Await(result)
end

-- OPEN TERMINAL
local function PlayRanOpenTerminal()
    local result = promise.new()
    local success = exports['ran-minigames']:OpenTerminal()
    result:resolve(success)

    return Citizen.Await(result)
end

-- Exports
exports('PlayRanMemoryCard', PlayRanMemoryCard)
exports('PlayRanMineSweep', PlayRanMineSweep)
exports('PlayRanOpenTerminal', PlayRanOpenTerminal)

-- Attach to config
Config.Minigames["ran-minigames"]["memorycard"].Game = PlayRanMemoryCard
Config.Minigames["ran-minigames"]["minesweep"].Game = PlayRanMineSweep
Config.Minigames["ran-minigames"]["openterminal"].Game = PlayRanOpenTerminal
