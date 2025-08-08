if GetResourceState('glitch-minigames') ~= 'started' then
    print("^3[Minigames]^0 glitch-minigames is not started.")
    return
end

Config.Minigames = Config.Minigames or {}
Config.Minigames["glitch-minigames"] = Config.Minigames["glitch-minigames"] or {}

-- FIREWALL PULSE
local function PlayGlitchFirewallPulse()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["firewall_pulse"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartFirewallPulse(
        tier.zones, tier.misses, tier.fillTime, tier.fadeTime, tier.cooldown, tier.totalTime, tier.requiredScore
    )
    result:resolve(success)
    return Citizen.Await(result)
end

-- BACKDOOR SEQUENCE
local function PlayGlitchBackdoorSequence()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["backdoor_sequence"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartBackdoorSequence(
        tier.sequences, tier.hold, tier.interval, tier.lives, tier.scale, tier.streak, tier.max, tier.keys, tier.label
    )
    result:resolve(success)
    return Citizen.Await(result)
end

-- CIRCUIT RHYTHM
local function PlayGlitchCircuitRhythm()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["circuit_rhythm"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartCircuitRhythm(
        tier.rows, tier.keys, tier.gapMin, tier.gapMax, tier.length, tier.mode, tier.lives, tier.hold
    )
    result:resolve(success)
    return Citizen.Await(result)
end

-- SURGE OVERRIDE
local function PlayGlitchSurgeOverride()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["surge_override"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartSurgeOverride(tier.keys, tier.duration, tier.lives)
    result:resolve(success)
    return Citizen.Await(result)
end

-- CIRCUIT BREAKER
local function PlayGlitchCircuitBreaker()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["circuit_breaker"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartCircuitBreaker(
        tier.rows, tier.columns, tier.minTime, tier.maxTime, tier.successPause, tier.failPause, tier.startTime, tier.totalTime
    )
    result:resolve(success)
    return Citizen.Await(result)
end

-- VAR HACK
local function PlayGlitchVarHack()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["varhack"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartVarHack(tier.rows, tier.columns)
    result:resolve(success)
    return Citizen.Await(result)
end

-- PLASMA DRILLING
local function PlayGlitchPlasmaDrilling()
    local result = promise.new()
    local level = lib.callback.await('beans-minigames:server:fetchLevel', false, Config.Xp)
    local config = Config.Minigames["glitch-minigames"]["plasma_drill"]
    local tier = lib.callback.await('beans-minigames:server:getTierForLevel', false, config.difficulty, level)

    local success = exports['glitch-minigames']:StartPlasmaDrilling(tier.difficulty)
    result:resolve(success)
    return Citizen.Await(result)
end

-- Register exports
exports('PlayGlitchFirewallPulse', PlayGlitchFirewallPulse)
exports('PlayGlitchBackdoorSequence', PlayGlitchBackdoorSequence)
exports('PlayGlitchCircuitRhythm', PlayGlitchCircuitRhythm)
exports('PlayGlitchSurgeOverride', PlayGlitchSurgeOverride)
exports('PlayGlitchCircuitBreaker', PlayGlitchCircuitBreaker)
exports('PlayGlitchVarHack', PlayGlitchVarHack)
exports('PlayGlitchPlasmaDrilling', PlayGlitchPlasmaDrilling)

-- Attach to config
Config.Minigames["glitch-minigames"]["firewall_pulse"].Game = PlayGlitchFirewallPulse
Config.Minigames["glitch-minigames"]["backdoor_sequence"].Game = PlayGlitchBackdoorSequence
Config.Minigames["glitch-minigames"]["circuit_rhythm"].Game = PlayGlitchCircuitRhythm
Config.Minigames["glitch-minigames"]["surge_override"].Game = PlayGlitchSurgeOverride
Config.Minigames["glitch-minigames"]["circuit_breaker"].Game = PlayGlitchCircuitBreaker
Config.Minigames["glitch-minigames"]["varhack"].Game = PlayGlitchVarHack
Config.Minigames["glitch-minigames"]["plasma_drill"].Game = PlayGlitchPlasmaDrilling
