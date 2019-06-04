#!/bin/bash
curl --user ${RPC_USER}:${RPC_PASSWORD} \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"1.0","id":"curltext","method":"getinfo"}' \
  http://127.0.0.1:10000