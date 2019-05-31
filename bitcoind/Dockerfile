FROM alpine
USER root

ENV ENV=testnet
ENV RPC_PORT=10000
ENV RPC_USER=test
ENV RPC_PASSWORD=test
ENV RPC_ALLOW_IP=0.0.0.0/0

WORKDIR /root
COPY . .
RUN apk add bitcoin bash
RUN mkdir mainnet_data && mkdir testnet_data

EXPOSE ${RPC_PORT}

ENTRYPOINT ["./entrypoint.sh"]