# lamina1-docker
## Build
    docker build . -t lamina1
## Run
    docker run --restart unless-stopped -d -v /mnt/blockstore/lamina1:/root/.lamina1 -p 9651:9651 -p 9650:9650 -p 9671:9671 --name lamina1 lamina1
## Check bootstrap
    docker exec -it lamina1 /app/lamina1/check-bootstrap.sh
## Get Node Id
    docker exec -it lamina1 /app/lamina1/get_my_nodeid.sh

## Docs
[read more...](https://docs.lamina1.network/docs/userguide/#running-a-lamina1-node)
