# Dockerfile for bitcoind

## Environment Variables
```
ENV=testnet
RPC_PORT=10000
RPC_USER=test
RPC_PASSWORD=test
RPC_ALLOW_IP=0.0.0.0/0
```

## How to start

### docker build
```bash
docker build . -t bitcoind
```

### docker run
```bash
docker run -td -p 10000:10000 -e "ENV=testnet" -e "RPC_PORT=10000" -e "RPC_USER=zyfu90" -e "RPC_PASSWORD=123456" -e "RPC_ALLOW_IP=0.0.0.0/0" -v ~/tmp/testnet_data:/root/testnet_data bitcoind
```

### Test RPC

```bash
curl --data-binary '{"jsonrpc":"1.0","id":"curltext","method":"getnewaddress","params":[]}' -H 'content-type:text/plain;' http://zyfu90:123456@localhost:10000
```

```bash
{"result":"2N8GDNXMcUWpE8HPi5behcwg8a125T2E1Nj","error":null,"id":"curltext"}
```