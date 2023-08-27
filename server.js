const { ScriptServer } = require('@scriptserver/core');
const { useEssentials } = require('@scriptserver/essentials');
require('dotenv').config()


const serverFile = "spigot-" + process.env.serverVersion + ".jar";
const server = new ScriptServer({
    javaServer: {
      path: './server/',
      jar: serverFile,
      args: ['-Xmx1024M', '-Xms1024M'],
    },
    rconConnection: {
      port: 25575,
      password: 'password',
    },
  });
// server.use(require('scriptserver-event'));
// server.use(require('scriptserver-util'));
// server.use(require('scriptserver-command'));
// server.use(require('scriptserver-json'));


module.exports = server;