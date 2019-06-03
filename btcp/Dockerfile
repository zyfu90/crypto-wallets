FROM ubuntu:xenial
# FROM alpine

USER root
WORKDIR /root
COPY . .

ENV ENV=testnet \
    RPC_USER=test \
    RPC_PASSWORD=test \
    RPC_ALLOW_IP=0.0.0.0/0 \
    SYMBOL=btcp

RUN apt-get update && apt-get install -y wget unzip libgomp1

ENV DOWNLOAD_URL=https://github.com/BTCPrivate/BitcoinPrivate/releases/download/1.0.13/btcp_1.0.13-linux.zip

RUN wget ${DOWNLOAD_URL}

RUN wget https://raw.githubusercontent.com/BTCPrivate/BitcoinPrivate/master/btcputil/fetch-params.sh && chmod +x ./fetch-params.sh

RUN mkdir -p ./binary/bin && unzip *.zip -d ./binary/bin && chmod +x ./binary/bin/* && rm ./*.zip
RUN ./fetch-params.sh

RUN mkdir mainnet_data && mkdir testnet_data

ENTRYPOINT ["./entrypoint.sh"]