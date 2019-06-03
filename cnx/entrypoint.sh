#!/bin/bash

sed -i "s|rpcuser=.*|rpcuser=${RPC_USER}|g" ./*.conf
sed -i "s|rpcpassword=.*|rpcpassword=${RPC_PASSWORD}|g" ./*.conf
sed -i "s|rpcallowip=.*|rpcallowip=${RPC_ALLOW_IP}|g" ./*.conf
sed -i "s|SYMBOL|${SYMBOL}|g" ./*.conf


if [ "${ENV}" == "mainnet" ];
then
    /root/binary/bin/cryptonexd -rescan -datadir=/root/mainnet_data -conf=/root/mainnet.conf -rpcallowip=${RPC_ALLOW_IP}
else
    /root/binary/bin/cryptonexd -rescan -regtest -datadir=/root/testnet_data -conf=/root/testnet.conf -rpcallowip=${RPC_ALLOW_IP}
fi