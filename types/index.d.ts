import type RPC from 'arpc'

declare module 'koishi-core' {
    namespace Context {
        interface Delegates {
            rpc: RPC
        }
    }
}