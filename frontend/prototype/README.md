# UI Prototype
## Using NodeJS with Express

Install using `npm install`.

Run with `npm start`. This will start the server on port 3000.

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
./geth  --nodiscover --maxpeers 0 --rpc --rpcapi "personal,web3,eth,db,net.miner" --rpccorsdomain "*" --datadir ./data --networkid 1212 --dev
```

## Creating the contract
You can create the contract by executing (you may have to execute this multiple times)
```javascript
api.createContract(function(err,val){console.log(val);});
```
in your browsers js console. Copy the printed address to
```javascript
Api.prototype.contractAdress  = ...
```
in index.hjs.
