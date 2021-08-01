{ Context, Logger } = require 'koishi-core'
server = require 'arpc/server'
socketio = require 'socket.io'

Context.delegate 'rpc'
logger = new Logger 'RPC'
    
module.exports = (ctx, config) ->
  config = {
    path: '/rpc'
    ...config
  }
  httpServer = ctx.app._httpServer
  if !httpServer
    logger.warn '未配置 port 参数'
    return
  io = socketio httpServer, config 
  ctx.rpc = server io