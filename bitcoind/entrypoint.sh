#!/bin/bash

sed -i "s|rpcport=.*|rpcport=${RPC_PORT}|" ./*.conf
sed -i "s|rpcuser=.*|rpcuser=${RPC_USER}|" ./*.conf
sed -i "s|rpcpassword=.*|rpcpassword=${RPC_PASSWORD}|" ./*.conf
sed -i "s|rpcallowip=.*|rpcallowip=${RPC_ALLOW_IP}|" ./*.conf


if [ "${ENV}" == "mainnet" ];
then
    bitcoind -rescan -datadir=/root/mainnet_data -conf=/root/mainnet.conf
else
    bitcoind -rescan -regtest -datadir=/root/testnet_data -conf=/root/testnet.conf
fi