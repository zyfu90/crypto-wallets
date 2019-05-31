FROM alpine
USER root

ENV ENV=testnet \
    RPC_PORT=10000 \
    RPC_USER=test \
    RPC_PASSWORD=test \
    RPC_ALLOW_IP=0.0.0.0/0 \
    SYMBOL=btc

WORKDIR /root
COPY . .
RUN apk add bitcoin bash
RUN mkdir mainnet_data && mkdir testnet_data

EXPOSE ${RPC_PORT}

ENTRYPOINT ["./entrypoint.sh"]