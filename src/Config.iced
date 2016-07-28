Config =
  vault: 'https://vault.trailbot.io:8443'

if process.env['DEV'] is 'true'
  console.log 'DEV MODE'
  Config.vault = 'http://localhost:8443'
  Config.watcher_key = './keys/trailbot_watcher.priv.asc'
  Config.client_key = './keys/trailbot_client.pub.asc'

for key, val of process.env
  Config[key.toLowerCase()] = val

module.exports = Config
