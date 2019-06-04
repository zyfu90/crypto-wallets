#!/bin/bash
curl --data-binary '{"jsonrpc":"1.0","id":"curltext","method":"getblockchaininfo","params":[]}' -H 'content-type:text/plain;' http://${RPC_USER}:${RPC_PASSWORD}@127.0.0.1:10000