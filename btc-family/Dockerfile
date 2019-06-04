FROM ubuntu:xenial

USER root
WORKDIR /root
COPY . .

ENV ENV=testnet \
    RPC_USER=test \
    RPC_PASSWORD=test \
    RPC_ALLOW_IP=0.0.0.0/0 \
    SYMBOL=btc \
    EXEC=bitcoind

ARG DOWNLOAD_URL=https://github.com/Bitcoin-ABC/bitcoin-abc/releases/download/v0.19.6/bitcoin-abc-0.19.6-x86_64-linux-gnu.tar.gz

RUN apt-get update && apt-get install -y wget

RUN wget ${DOWNLOAD_URL}
RUN mkdir binary && tar -xvzf ./*.tar.gz -C /root/binary --strip 1 && rm ./*.gz
RUN mkdir mainnet_data && mkdir testnet_data

ENTRYPOINT ["./entrypoint.sh"]