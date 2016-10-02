# UI Prototype
## Using NodeJS with Express

Install using `npm install`.

Run with `npm start`.

## Etherum Node
Generated using the genesis file:
```json
{
    "nonce": "0x0000000000000042",
    "timestamp": "0x0",
    "parentHash": "0x0000000000000000000000000000000000000000000000000000000000000000",
    "extraData": "0x0",
    "gasLimit": "0x8000000",
    "difficulty": "0x011",
    "mixhash": "0x0000000000000000000000000000000000000000000000000000000000000000",
    "coinbase": "0x3333333333333333333333333333333333333333",
    "alloc": {
    }
}
```

And the startup script:
```bash
#!/bin/bash
./geth  --nodiscover --maxpeers 0 --rpc --rpcapi "personal,web3,eth,db,net.miner" --rpccorsdomain "*" --datadir ./data --networkid 1212 --autodag --ipcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3"
```
