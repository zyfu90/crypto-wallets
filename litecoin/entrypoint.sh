#!/bin/bash

sed -i "s|rpcport=.*|rpcport=${RPC_PORT}|g" ./template.conf
sed -i "s|rpcuser=.*|rpcuser=${RPC_USER}|g" ./template.conf
sed -i "s|rpcpassword=.*|rpcpassword=${RPC_PASSWORD}|g" ./template.conf
sed -i "s|rpcallowip=.*|rpcallowip=${RPC_ALLOW_IP}|g" ./template.conf
sed -i "s|SYMBOL|${SYMBOL}|g" ./template.conf


if [ "${ENV}" == "mainnet" ];
then
    /root/binary/bin/litecoind -rescan -datadir=/root/mainnet_data -conf=/root/template.conf
else
    /root/binary/bin/litecoind -rescan -regtest -datadir=/root/testnet_data -conf=/root/template.conf
fi