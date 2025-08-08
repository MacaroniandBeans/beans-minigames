Config = {}
Config.MiniGames = {}

Config.Xp = 'hacking'

Config.Minigames = {
    ["ps-ui"] = {
        ["circle"] = {
            label = "PS Circle",
            difficulty = {
                { level = 0,  circle = 1, speed = 1 },
                { level = 10, circle = 1, speed = 0.5 },
                { level = 20, circle = 4, speed = 1 },
            },
        },
        ["maze"] = {
            label = "PS Maze",
            difficulty = {
                { level = 0,  time = 60 },
                { level = 15, time = 45 },
            },
        },
        ["var"] = {
            label = "Var Hack",
            difficulty = {
                { level = 0,  squares = 2, time = 30 },
                { level = 2, squares = 2, time = 35 },
                { level = 3, squares = 2, time = 40 },
                { level = 40, squares = 5, time = 50 },
                { level = 50, squares = 4, time = 60 },
            },
        },
        ["thermite"] = {
            label = "Thermite Hack",
            difficulty = {
                { level = 0,  time = 15, grid = 9, fail = 2 },
                { level = 20, time = 20, grid = 8, fail = 3 },
                { level = 30, time = 24, grid = 7, fail = 4 },
                { level = 40, time = 27, grid = 6, fail = 4 },
                { level = 50, time = 30, grid = 5, fail = 5 },
            },
        },
        ["scrambler"] = {
            label = "Scrambler Hack",
            difficulty = {
                { level = 0,  type = "alphabet",        time = 25, form = 2 },
                { level = 5, type = "numeric",        time = 35, form = 1 },
                { level = 10, type = "alphanumeric", time = 40, form = 1 },
                { level = 40, type = "alphabet",     time = 45, form = 0 },
                { level = 50, type = "numeric",      time = 60, form = 0 },
            },
        },
    },

    ["boii_minigames"] = {
        ["anagram"] = {
            label = "Anagram",
            difficulty = {
                { level = 0, loading = 5000, difficulty = 10, guesses = 3, timer = 15000 },
                { level = 30, loading = 5000, difficulty = 7, guesses = 5, timer = 25000 },
                { level = 50, loading = 5000, difficulty = 5, guesses = 8, timer = 30000 },
            },
        },
        ["button_mash"] = {
            label = "Button Mash",
            difficulty = {
                { level = 0, difficulty = 10 },
                { level = 30, difficulty = 8 },
                { level = 50, difficulty = 6 },
            },
        },
        ["chip_hack"] = {
            label = "Chip Hack",
            difficulty = {
                { level = 0, loading = 8000, chips = 4, timer = 15000 },
                { level = 30, loading = 6000, chips = 3, timer = 22000 },
                { level = 50, loading = 5000, chips = 2, timer = 30000 },
            },
        },
        ["hangman"] = {
            label = "Hangman",
            difficulty = {
                { level = 0, loading = 5000, difficulty = 4, guesses = 3, timer = 15000 },
                { level = 30, loading = 6500, difficulty = 3, guesses = 4, timer = 22000 },
                { level = 50, loading = 8000, difficulty = 2, guesses = 5, timer = 30000 },
            },
        },
        ["key_drop"] = {
            label = "Key Drop",
            difficulty = {
                { level = 0, limit = 5, misses = 2, delay = 2000, letter = 1000 },
                { level = 30, limit = 4, misses = 3, delay = 2500, letter = 1500 },
                { level = 50, limit = 3, misses = 4, delay = 3000, letter = 2000 },
            },
        },
        ["pincode"] = {
            label = "Pincode",
            difficulty = {
                { level = 0, length = 3, time = 10000 },
                { level = 10, length = 4, time = 10000 },
                { level = 20, length = 5, time = 10000 },
                { level = 30, length = 6, time = 9000 },
                { level = 40, length = 7, time = 8000 },
                { level = 50, length = 8, time = 7000 },
            },
        },
    },
    ["bd-minigames"] = {
    ["inspired-lockpick"] = {
        label = "Inspired Lockpick",
        difficulty = {
            { level = 0, minCircles = 2, maxCircles = 5 },
            { level = 30, minCircles = 3, maxCircles = 5 },
            { level = 50, minCircles = 4, maxCircles = 6 },
        },
    },
    ["inspired-chopping"] = {
        label = "Inspired Chopping",
        difficulty = {
            { level = 0, blocks = 12, time = 30 },
            { level = 30, blocks = 10, time = 35 },
            { level = 50, blocks = 8, time = 40 },
        },
    },
    ["inspired-pincracker"] = {
        label = "Inspired Pin Cracker",
        difficulty = {
            { level = 0, pins = 3, time = 20 },
            { level = 30, pins = 4, time = 25 },
            { level = 50, pins = 5, time = 30 },
        },
    },
    ["inspired-roofrunning"] = {
        label = "Inspired Roof Running",
        difficulty = {
            { level = 0, walls = 3, rows = 3, time = 30 },
            { level = 30, walls = 4, rows = 4, time = 35 },
            { level = 50, walls = 5, rows = 5, time = 40 },
        },
    },
    ["inspired-thermite"] = {
        label = "Inspired Thermite",
        difficulty = {
            { level = 0, score = 15, row = 7, column = 7, time = 40 },
            { level = 30, score = 12, row = 7, column = 7, time = 50 },
            { level = 50, score = 8, row = 6, column = 6, time = 60 },
        },
    },
    ["inspired-terminal"] = {
        label = "Inspired Terminal",
        difficulty = {
            { level = 0, row = 4, column = 2, view = 10, type = 30, answers = 4 },
            { level = 30, row = 4, column = 2, view = 10, type = 30, answers = 3 },
            { level = 50, row = 4, column = 2, view = 10, type = 30, answers = 2 },
        },
    },
},
["ran-minigames"] = {
    ["memorycard"] = {
        label = "Memory Card",
        difficulty = {
            { level = 0, time = 120 },
            { level = 30, time = 90 },
            { level = 50, time = 60 },
        },
    },
    ["minesweep"] = {
        label = "Mine Sweep",
        difficulty = {
            { level = 0, money = 18000, bomb = 12, fail = 3, area = "right" },
            { level = 30, money = 12000, bomb = 8, fail = 5, area = "center" },
            { level = 50, money = 8000, bomb = 4, fail = 6, area = "center" },
        },
    },
    ["openterminal"] = {
        label = "Open Terminal",
        difficulty = {
            { level = 0 }, -- This minigame appears to not have parameters
        },
    },
},
["glitch-minigames"] = {
    ["firewall_pulse"] = {
        label = "Firewall Pulse",
        difficulty = {
            { level = 0, zones = 3, misses = 2, fillTime = 10, fadeTime = 8, cooldown = 30, totalTime = 120, requiredScore = 40 },
            { level = 30, zones = 4, misses = 3, fillTime = 8, fadeTime = 6, cooldown = 25, totalTime = 100, requiredScore = 35 },
            { level = 50, zones = 5, misses = 4, fillTime = 6, fadeTime = 4, cooldown = 20, totalTime = 80, requiredScore = 30 },
        },
    },
    ["backdoor_sequence"] = {
        label = "Backdoor Sequence",
        difficulty = {
            { level = 0, sequences = 3, hold = 20, interval = 20, lives = 3, scale = 2.0, streak = 3, max = 6, keys = {'W','A','S','D'}, label = 'W, A, S, D only' },
            { level = 30, sequences = 4, hold = 15, interval = 15, lives = 3, scale = 1.5, streak = 4, max = 8, keys = {'W','A','S','D'}, label = 'W, A, S, D only' },
            { level = 50, sequences = 5, hold = 10, interval = 10, lives = 4, scale = 1.2, streak = 5, max = 10, keys = {'W','A','S','D'}, label = 'W, A, S, D only' },
        },
    },
    ["circuit_rhythm"] = {
        label = "Circuit Rhythm",
        difficulty = {
            { level = 0, rows = 4, keys = {'A','S','D','F'}, gapMin = 150, gapMax = 800, length = 15, mode = "normal", lives = 5, hold = 3 },
            { level = 30, rows = 4, keys = {'A','S','D','F'}, gapMin = 130, gapMax = 700, length = 18, mode = "normal", lives = 6, hold = 2 },
            { level = 50, rows = 5, keys = {'A','S','D','F','G'}, gapMin = 100, gapMax = 600, length = 20, mode = "normal", lives = 7, hold = 1 },
        },
    },
    ["surge_override"] = {
        label = "Surge Override",
        difficulty = {
            { level = 0, keys = {'E','F'}, duration = 30, lives = 2 },
            { level = 30, keys = {'E','F'}, duration = 25, lives = 3 },
            { level = 50, keys = {'E','F'}, duration = 20, lives = 4 },
        },
    },
    ["circuit_breaker"] = {
        label = "Circuit Breaker",
        difficulty = {
            { level = 0, rows = 2, columns = 1, minTime = 1000, maxTime = 5000, successPause = 5000, failPause = 0, startTime = 10000, totalTime = 30000 },
            { level = 30, rows = 3, columns = 2, minTime = 800, maxTime = 4000, successPause = 4000, failPause = 0, startTime = 8000, totalTime = 25000 },
            { level = 50, rows = 4, columns = 3, minTime = 600, maxTime = 3000, successPause = 3000, failPause = 0, startTime = 6000, totalTime = 20000 },
        },
    },
    ["varhack"] = {
        label = "VAR Hack",
        difficulty = {
            { level = 0, rows = 5, columns = 5 },
            { level = 30, rows = 4, columns = 4 },
            { level = 50, rows = 3, columns = 3 },
        },
    },
    ["plasma_drill"] = {
        label = "Plasma Drilling",
        difficulty = {
            { level = 0, difficulty = 7 },
            { level = 30, difficulty = 5 },
            { level = 50, difficulty = 3 },
        },
    },
},
["misc"] = {
    ["hacking-opengame"] = {
        label = "Shapes and colors",
        difficulty = {
            { level = 0, time = 30, grid = 3, lives = 3 },
            { level = 20, time = 25, grid = 3, lives = 3 },
            { level = 40, time = 20, grid = 6, lives = 2 },
            { level = 60, time = 15, grid = 6, lives = 1 },
        },
    },
        ["distributor"] = {
        label = "Calibrate Distributor",
        difficulty = {
            { level = 0, dummy = true },
            { level = 30, dummy = true },
            { level = 50, dummy = true },
        },
    },
        ["casinohack"] = {
        label = "Casino Hack",
        difficulty = {
            { level = 0, time = 60 },
            { level = 20, time = 45 },
            { level = 40, time = 30 },
        },
    },
        ["lightsout"] = {
        label = "Lights Out",
        difficulty = {
            { level = 0, grid = 3, maxClicks = 8 },
            { level = 25, grid = 4, maxClicks = 6 },
            { level = 50, grid = 5, maxClicks = 4 },
        },
    },
["memorygame"] = {
    label = "Memory Game",
    difficulty = {
        { level = 0,  time = 15, gridsize = 3, blocks = 3 },
        { level = 5,  time = 12, gridsize = 3, blocks = 3 },
        { level = 10, time = 10, gridsize = 4, blocks = 4 },
        { level = 20, time = 8,  gridsize = 5, blocks = 5 },
        { level = 30, time = 6,  gridsize = 6, blocks = 6 },
    }
},
["numbers"] = {
    label = "Number Memory",
    difficulty = {
        { level = 0,  length = 5, timer = 10, show = 6 },
        { level = 5,  length = 7, timer = 9,  show = 6 },
        { level = 10, length = 10, timer = 8, show = 5 },
        { level = 20, length = 14, timer = 7, show = 5 },
        { level = 30, length = 18, timer = 6, show = 4 },
    }
},
["numberCounter"] = {
    label = "Number Counter",
    difficulty = {
        { level = 0,  total = 10, seconds = 20, changes = 3, games = 1, increment = 3 },
        { level = 5,  total = 15, seconds = 20, changes = 4, games = 2, increment = 5 },
        { level = 10, total = 18, seconds = 18, changes = 5, games = 2, increment = 6 },
        { level = 20, total = 20, seconds = 15, changes = 6, games = 3, increment = 7 },
        { level = 30, total = 25, seconds = 13, changes = 6, games = 4, increment = 8 },
    }
},
["boostinghack "] = {
    label = "Boosting Hack",
    difficulty = {
        { level = 0, time = 15 },
        { level = 20, time = 12 },
        { level = 40, time = 9 },
        { level = 60, time = 7 },
    }
},
    ["mhacking"] = {
        label = "MHacking",
        difficulty = {
            { level = 0,  solutionLength = 4, duration = 60, reshuffleInterval = 15000 },
            { level = 10, solutionLength = 6, duration = 50, reshuffleInterval = 12000 },
            { level = 20, solutionLength = 8, duration = 45, reshuffleInterval = 10000 },
            { level = 30, solutionLength = 10, duration = 40, reshuffleInterval = 8000 },
            { level = 40, solutionLength = 12, duration = 35, reshuffleInterval = 6000 },
        }
    },
},
["lunar_minigames"] = {
    keys = {
        label = "Key Sequence",
        difficulty = {
            { level = 0, keys = 10, time = 10 },
            { level = 5, keys = 15, time = 12 },
            { level = 10, keys = 20, time = 14 },
            { level = 20, keys = 24, time = 16 },
            { level = 30, keys = 30, time = 18 },
        }
    },
    sort = {
        label = "Sort Puzzle",
        difficulty = {
            { level = 0, length = 4, number = 15, time = 15 },
            { level = 5, length = 5, number = 18, time = 18 },
            { level = 10, length = 6, number = 20, time = 20 },
            { level = 20, length = 8, number = 25, time = 25 },
        }
    },
    lockpick = {
        label = "Lockpick Rings",
        difficulty = {
            { level = 0, rings = 4, time = 20 },
            { level = 5, rings = 6, time = 25 },
            { level = 10, rings = 8, time = 30 },
            { level = 15, rings = 10, time = 35 },
        }
    },
    pincracker = {
        label = "Pin Cracker",
        difficulty = {
            { level = 0, digits = 4, time = 30 },
            { level = 5, digits = 6, time = 45 },
            { level = 10, digits = 7, time = 60 },
            { level = 20, digits = 8, time = 75 },
        }
    },
    terminal = {
        label = "Terminal Hack",
        difficulty = {
            { level = 0, length = 4, count = 4, question = 4, time = 20 },
            { level = 5, length = 5, count = 5, question = 5, time = 25 },
            { level = 10, length = 6, count = 6, question = 6, time = 30 },
            { level = 20, length = 7, count = 7, question = 7, time = 35 },
        }
    },
    words = {
        label = "Word Match",
        difficulty = {
            { level = 0, words = 20, time = 20 },
            { level = 5, words = 30, time = 25 },
            { level = 10, words = 40, time = 30 },
            { level = 20, words = 50, time = 35 },
        }
    },
},
["sn-hacking"] = {
    memorygame = {
        label = "Memory Game",
        difficulty = {
            { level = 0, keys = 3, rounds = 2, time = 10000 },
            { level = 20, keys = 4, rounds = 3, time = 12000 },
            { level = 40, keys = 5, rounds = 4, time = 15000 },
        },
    },
    numberup = {
        label = "Number Up",
        difficulty = {
            { level = 0, keys = 20, rounds = 1, tries = 1, time = 15000, shuffle = 10000 },
            { level = 30, keys = 28, rounds = 2, tries = 2, time = 20000, shuffle = 15000 },
            { level = 50, keys = 32, rounds = 3, tries = 3, time = 25000, shuffle = 20000 },
        },
    },
    skillcheck = {
        label = "Skill Check",
        difficulty = {
            { level = 0, speed = 50, time = 5000, keys = {'w','a','s'}, rounds = 1, bars = 1, safebars = 0 },
            { level = 30, speed = 50, time = 5000, keys = {'w','a','s','d'}, rounds = 2, bars = 2, safebars = 1 },
            { level = 50, speed = 50, time = 5000, keys = {'w','a','s','d'}, rounds = 3, bars = 3, safebars = 2 },
        },
    },
    thermite = {
        label = "Thermite",
        difficulty = {
            { level = 0, boxes = 5, correct = 3, time = 10000, lifes = 1, rounds = 1, show = 2000 },
            { level = 30, boxes = 7, correct = 4, time = 10000, lifes = 2, rounds = 2, show = 3000 },
            { level = 50, boxes = 9, correct = 5, time = 12000, lifes = 3, rounds = 3, show = 4000 },
        },
    },
    skillbar = {
        label = "Skill Bar",
        difficulty = {
            { level = 0, duration = {2000, 3000}, width = 10, rounds = 1 },
            { level = 30, duration = {2000, 3000}, width = 12, rounds = 2 },
            { level = 50, duration = {2000, 3000}, width = 15, rounds = 3 },
        },
    },
    keypad = {
        label = "Keypad",
        difficulty = {
            { level = 0, code = 111, time = 3000 },
            { level = 25, code = 555, time = 4000 },
            { level = 50, code = 999, time = 5000 },
        },
    },
    colorpicker = {
        label = "Color Picker",
        difficulty = {
            { level = 0, icons = 3, typeTime = 7000, viewTime = 3000 },
            { level = 30, icons = 4, typeTime = 9000, viewTime = 3000 },
            { level = 50, icons = 5, typeTime = 10000, viewTime = 3000 },
        },
    },
    memorycards = {
        label = "Memory Cards",
        difficulty = {
            { level = 0, difficulty = "easy", rounds = 1 },
            { level = 25, difficulty = "medium", rounds = 2 },
            { level = 50, difficulty = "hard", rounds = 3 },
        },
    },
    mines = {
        label = "Mines",
        difficulty = {
            { level = 0, boxes = 5, lifes = 2, mines = 4, special = 0 },
            { level = 30, boxes = 6, lifes = 2, mines = 5, special = 1 },
            { level = 50, boxes = 9, lifes = 3, mines = 6, special = 1 },
        },
    },
}


}



-- beans

--[[ TriggerEvent("Mx::StartMinigameElectricCircuit", x, y, scale, size_game, sound_name, function()
	print(">>>>>>  Success  <<<<<<")
end) ]]