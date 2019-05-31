FROM ubuntu:xenial

USER root
WORKDIR /root
COPY . .

ENV ENV=testnet \
    RPC_PORT=10000 \
    RPC_USER=test \
    RPC_PASSWORD=test \
    RPC_ALLOW_IP=0.0.0.0/0 \
    SYMBOL=dash

RUN apt-get update && apt-get install -y wget

ENV DOWNLOAD_URL=https://github.com/dashpay/dash/releases/download/v0.14.0.0/dashcore-0.14.0.0-x86_64-linux-gnu.tar.gz

RUN wget ${DOWNLOAD_URL}
RUN mkdir binary && tar -xvzf ./*.tar.gz -C /root/binary --strip 1 && rm ./*.gz
RUN mkdir mainnet_data && mkdir testnet_data

EXPOSE ${RPC_PORT}

ENTRYPOINT ["./entrypoint.sh"]