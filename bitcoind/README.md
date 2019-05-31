# Dockerfile for bitcoind

## How to start

```bash
docker build . -t bitcoind
```

```bash
docker run -td -p 10000:10000 -e "ENV=testnet" -e "RPC_PORT=10000" -e "RPC_USER=zyfu90" -e "RPC_PASSWORD=123456" -e "RPC_ALLOW_IP=0.0.0.0/0" bitcoind
```