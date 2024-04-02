docker run -d --rm --name bitcoind -v /teamspace/studios/bitcoin-dataset/.bitcoin:/data bitcoinsv/bitcoin-sv
docker network create bitcoin
docker run -d --rm --name bitcoind -v /teamspace/studios/bitcoin-dataset/.bitcoin:/data --network bitcoin bitcoinsv/bitcoin-sv
docker run --rm --network bitcoin bitcoinsv/bitcoin-sv bitcoin-cli -rpcconnect=bitcoind getinfo