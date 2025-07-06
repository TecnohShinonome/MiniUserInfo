fx_version 'bodacious'
game 'gta5'

name 'MiniUserInfo'
author 'Tecnoh'
description ''
version 'v1.0.0'
url 'https://github.com/'

server_script {
    'server/server.lua',
    'config.lua'
}

client_scripts {
    'client/client.lua',
    'config.lua'
}

ui_page "html/index.html"

files {
    "html/index.html",
    "html/app.js",
    "html/style.css"
}