FROM ubuntu:16.04

USER root
WORKDIR /root
COPY . .

ENV ENV=testnet \
    RPC_USER=test \
    RPC_PASSWORD=test \
    RPC_ALLOW_IP=*.*.*.* \
    SYMBOL=cnx \
    EXEC=cryptonexd

ARG DOWNLOAD_URL=https://github.com/Cryptonex/release/raw/master/cryptonex-daemon.tar.gz

RUN apt-get update && apt-get install -y wget libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev libminiupnpc-dev libboost-system-dev libboost-filesystem-dev libboost-chrono-dev libboost-program-options-dev libboost-test-dev libboost-thread-dev libdb5.3-dev libdb5.3++-dev curl

RUN wget ${DOWNLOAD_URL}
RUN mkdir -p ./binary/bin && tar -xvzf ./*.tar.gz -C /root/binary/bin && chmod +x ./binary/bin/* && rm ./*.gz
RUN mkdir mainnet_data && mkdir testnet_data

ENTRYPOINT ["./entrypoint.sh"]

