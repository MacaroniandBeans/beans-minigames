fx_version 'cerulean'
game 'gta5'

author 'Beans'
description 'Centralized Minigame System with XP Difficulty Scaling'
version '1.0.0'

shared_script {
    '@ox_lib/init.lua',
    'config.lua'
    
}

client_scripts {
    'client/main.lua',
    'client/ps-ui.lua',
    'client/boii_minigames.lua',
    'client/bd-minigames.lua',
    'client/glitch-minigames.lua',
    'client/lunar_minigames.lua',
    'client/misc.lua',
    'client/ran-minigames.lua',
    'client/SN-Hacking.lua',


}

server_script 'server.lua'

dependencies {
    'ox_lib'
}

lua54 'yes'