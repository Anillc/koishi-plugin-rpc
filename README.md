# koishi-plugin-rpc
一个为其他插件提供 RPC 的插件

## Usage
安装该插件，注意需要配置 koishi 的 `port` 参数以使用 httpServer

Options:
```JavaScript
plugins: {
    rpc: {
        path: '/rpc'
        // rpc 的路径，可以将此参数作为 secret 防止其他人使用 rpc 接口
    }
}
```

创建服务
```JavaScript
ctx.rpc.createService(name, obj)
```

使用服务
```JavaScript
const client = require('arpc/client')
(async function(){
    let obj = client('ws://127.0.0.1:8080', name)
    console.log(await obj.www)
})()
```

更多使用方法请参考 [Anillc/arpc](https://github.com/Anillc/arpc)