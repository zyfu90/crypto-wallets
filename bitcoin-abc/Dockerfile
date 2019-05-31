FROM ubuntu:xenial

USER root
WORKDIR /root
COPY . .

ENV ENV=testnet \
    RPC_PORT=10000 \
    RPC_USER=test \
    RPC_PASSWORD=test \
    RPC_ALLOW_IP=0.0.0.0/0 \
    SYMBOL=bch

RUN apt-get update && apt-get install -y wget

ENV DOWNLOAD_URL=https://github.com/Bitcoin-ABC/bitcoin-abc/releases/download/v0.19.6/bitcoin-abc-0.19.6-x86_64-linux-gnu.tar.gz

RUN wget ${DOWNLOAD_URL}
RUN mkdir bitcoin-abc && tar -xvzf ./*.tar.gz -C /root/bitcoin-abc --strip 1 && rm ./*.gz
RUN mkdir mainnet_data && mkdir testnet_data

EXPOSE ${RPC_PORT}

ENTRYPOINT ["./entrypoint.sh"]