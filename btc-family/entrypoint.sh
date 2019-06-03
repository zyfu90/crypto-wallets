#!/bin/bash

sed -i "s|rpcport=.*|rpcport=${RPC_PORT}|g" ./*.conf
sed -i "s|rpcuser=.*|rpcuser=${RPC_USER}|g" ./*.conf
sed -i "s|rpcpassword=.*|rpcpassword=${RPC_PASSWORD}|g" ./*.conf
sed -i "s|rpcallowip=.*|rpcallowip=${RPC_ALLOW_IP}|g" ./*.conf
sed -i "s|SYMBOL|${SYMBOL}|g" ./*.conf


if [ "${SYMBOL}" == "usdt" ];
then
    sed -i "s|#txindex=1|txindex=1|g" ./*.conf
fi

if [ "${ENV}" == "mainnet" ];
then
    /root/binary/bin/${EXEC} -rescan -datadir=/root/mainnet_data -conf=/root/mainnet.conf
else
    /root/binary/bin/${EXEC} -rescan -regtest -datadir=/root/testnet_data -conf=/root/testnet.conf
fi