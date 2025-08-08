-- SN-Hacking minigames in consistent format

-- MemoryGame
local function PlaySnMemoryGame()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].memorygame
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:MemoryGame(tier.keys, tier.rounds, tier.time)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnMemoryGame', PlaySnMemoryGame)
Config.Minigames["sn-hacking"].memorygame.Game = PlaySnMemoryGame

-- NumberUp
local function PlaySnNumberUp()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].numberup
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:NumberUp(tier.keys, tier.rounds, tier.tries, tier.time, tier.shuffleTime)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnNumberUp', PlaySnNumberUp)
Config.Minigames["sn-hacking"].numberup.Game = PlaySnNumberUp

-- SkillCheck
local function PlaySnSkillCheck()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].skillcheck
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:SkillCheck(tier.speed, tier.time, tier.keys, tier.rounds, tier.bars, tier.safebars)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnSkillCheck', PlaySnSkillCheck)
Config.Minigames["sn-hacking"].skillcheck.Game = PlaySnSkillCheck

-- Thermite
local function PlaySnThermite()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].thermite
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:Thermite(tier.boxes, tier.correctboxes, tier.time, tier.lifes, tier.rounds, tier.showTime)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnThermite', PlaySnThermite)
Config.Minigames["sn-hacking"].thermite.Game = PlaySnThermite

-- SkillBar
local function PlaySnSkillBar()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].skillbar
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:SkillBar(tier.duration, tier.width, tier.rounds)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnSkillBar', PlaySnSkillBar)
Config.Minigames["sn-hacking"].skillbar.Game = PlaySnSkillBar

-- KeyPad
local function PlaySnKeyPad()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].keypad
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:KeyPad(tier.code, tier.time)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnKeyPad', PlaySnKeyPad)
Config.Minigames["sn-hacking"].keypad.Game = PlaySnKeyPad

-- ColorPicker
local function PlaySnColorPicker()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].colorpicker
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:ColorPicker(tier.icons, tier.typeTime, tier.viewTime)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnColorPicker', PlaySnColorPicker)
Config.Minigames["sn-hacking"].colorpicker.Game = PlaySnColorPicker

-- MemoryCards
local function PlaySnMemoryCards()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].memorycards
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:MemoryCards(tier.difficulty, tier.rounds)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnMemoryCards', PlaySnMemoryCards)
Config.Minigames["sn-hacking"].memorycards.Game = PlaySnMemoryCards

-- Mines
local function PlaySnMines()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["sn-hacking"].mines
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['SN-Hacking']:Mines(tier.boxes, tier.lifes, tier.mines, tier.special)
    result:resolve(success)
    return Citizen.Await(result)
end
exports('PlaySnMines', PlaySnMines)
Config.Minigames["sn-hacking"].mines.Game = PlaySnMines
