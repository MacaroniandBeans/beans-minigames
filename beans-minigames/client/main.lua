local TestTierOverride = {}

RegisterNetEvent("beans-minigames:client:getTierForLevel", function(difficulty, level, cbEvent)
    local tier = difficulty[1]
    for i = #difficulty, 1, -1 do
        if level >= difficulty[i].level then
            tier = difficulty[i]
            break
        end
    end
    TriggerEvent(cbEvent, tier)
end)


exports('PlayMinigame', function(dev, game)
    if not Config.Minigames[dev] or not Config.Minigames[dev][game] then
        print("❌ Invalid minigame export call:", dev, game)
        return false
    end

    local gameFunc = Config.Minigames[dev][game].Game
    if not gameFunc then
        print("❌ No Game() function for:", dev, game)
        return false
    end

    return gameFunc()
end)


exports('PlayMinigameWithTier', function(dev, game, overrideTier, overrideLevel)
    if not Config.Minigames[dev] or not Config.Minigames[dev][game] then
        print("❌ Invalid minigame call:", dev, game)
        return false
    end

    local originalFetch = lib.callback.fetch

    -- Hijack both tier and level fetches temporarily
    lib.callback.fetch = function(name, _, ...)
        if name == 'beans-minigames:server:fetchLevel' then
            return overrideLevel
        elseif name == 'beans-minigames:server:getTierForLevel' then
            return overrideTier
        end
        return originalFetch(name, _, ...)
    end

    local gameFunc = Config.Minigames[dev][game].Game
    local result = gameFunc()

    lib.callback.fetch = originalFetch -- restore
    return result
end)




RegisterCommand("minigametest", function()
    if not Config.Minigames then return end

    -- Step 1: Developer selection
    local devOptions = {}
    for devName in pairs(Config.Minigames) do
        devOptions[#devOptions + 1] = {
            title = devName,
            icon = 'code',
            value = devName
        }
    end

    local devChoice = lib.inputDialog('Select Developer', {
        {
            type = 'select',
            label = 'Developer',
            options = devOptions,
            required = true,
            icon = 'code-branch'
        }
    })
    if not devChoice then return end
    local dev = devChoice[1]

    -- Step 2: Game selection
    local gameOptions = {}
    for gameName, data in pairs(Config.Minigames[dev]) do
        gameOptions[#gameOptions + 1] = {
            title = data.label or gameName,
            icon = 'gamepad',
            value = gameName
        }
    end

    local gameChoice = lib.inputDialog('Select Minigame', {
        {
            type = 'select',
            label = 'Game',
            options = gameOptions,
            required = true,
            icon = 'dice'
        }
    })
    if not gameChoice then return end
    local game = gameChoice[1]

    -- Step 3: Difficulty Tier selection based on level
    local tierList = Config.Minigames[dev][game].difficulty or {}
    local tierOptions = {}

    for _, tier in ipairs(tierList) do
        tierOptions[#tierOptions + 1] = {
            title = "Level " .. tier.level,
            description = json.encode(tier),
            value = tier.level
        }
    end

    local levelChoice = lib.inputDialog('Select Difficulty Level', {
        {
            type = 'select',
            label = 'Level (Tier)',
            options = tierOptions,
            required = true,
            icon = 'chart-line'
        }
    })
    if not levelChoice then return end
    local selectedLevel = levelChoice[1]

    -- Step 4: Fetch tier for selected level via local tier resolution
    local selectedTier = tierList[1]
    for i = #tierList, 1, -1 do
        if selectedLevel >= tierList[i].level then
            selectedTier = tierList[i]
            break
        end
    end

    -- Step 5: Run the minigame using selected tier
TriggerServerEvent('beans-minigames:server:setTestOverride', selectedTier.level, selectedTier)

local success = exports['beans-minigames']:PlayMinigame(dev, game)

TriggerServerEvent('beans-minigames:server:clearTestOverride')

    if success then
        lib.notify({ title = 'Minigame', description = 'Success!', type = 'success' })
    else
        lib.notify({ title = 'Minigame', description = 'Failed!', type = 'error' })
    end
end)





