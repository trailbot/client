electron = require 'electron'
{app} = electron
{BrowserWindow} = electron

Config = require './Config'

win = null

createWindow = ->
  win = new BrowserWindow
    width: 1440
    height: 768
    minWidth: 720
    minHeight: 500
    autoHideMenuBar: true
    title: 'Trailbot Client'
    icon: __dirname + '/../icon.png'
  win.loadURL """data:text/html,<webview id="wv" src="#{Config.vault}" preload="file://#{__dirname}/preload.js" style="position: fixed; top: 0; right: 0; bottom: 0; left: 0;"></webview><script>window.document.getElementById('wv').addEventListener('console-message', function(e) { console.log(e.message); });</script>"""

  win.on 'closed', () =>
    win = null

app.on 'ready', createWindow
app.on 'window-all-closed', () =>
  if process.platform isnt 'darwin'
    app.quit()
app.on 'activate', =>
  if win is null
    createWindow()
