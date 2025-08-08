-- Testing override storage
local ForcedXPLevel = {}
local ForcedTier = {}

-- Override-aware fetchLevel
lib.callback.register('beans-minigames:server:fetchLevel', function(source, skill)
    return ForcedXPLevel[source] or exports['pickle_xp']:GetPlayerLevel(source, skill) or 0
end)

-- Override-aware tier selection
lib.callback.register('beans-minigames:server:getTierForLevel', function(source, difficultyTable, level)
    if ForcedTier[source] then return ForcedTier[source] end

    if type(difficultyTable) ~= "table" then
        print("^1[Minigames]^0 Invalid difficulty passed to getTierForLevel:", json.encode(difficultyTable))
        return nil
    end

    local tier = difficultyTable[1]
    for i = #difficultyTable, 1, -1 do
        if level >= difficultyTable[i].level then
            tier = difficultyTable[i]
            break
        end
    end
    return tier
end)

-- Allow test override from client
RegisterNetEvent('beans-minigames:server:setTestOverride', function(level, tier)
    local src = source
    ForcedXPLevel[src] = level
    ForcedTier[src] = tier
end)

-- Clear test override after test
RegisterNetEvent('beans-minigames:server:clearTestOverride', function()
    local src = source
    ForcedXPLevel[src] = nil
    ForcedTier[src] = nil
end)
