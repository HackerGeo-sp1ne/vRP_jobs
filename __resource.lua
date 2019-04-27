-- Discord Ice Heart#1826
dependency 'vrp'

ui_page "html/ui.html"

files {
  "html/ui.html",
  "html/js/index.js",
  "html/css/style.css"
}

client_script {
  'lib/Tunnel.lua',
  'lib/Proxy.lua',
  'config.lua',
  'client.lua'
}

server_script {
  '@vrp/lib/utils.lua',
  'config.lua',
  'server.lua'
}
