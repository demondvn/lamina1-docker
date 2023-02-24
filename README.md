# lamina1-docker
## Build
    docker build . -t lamina1
## Run
    docker run --restart unless-stopped -d -v /mnt/blockstore/lamina1:/root/.lamina1 -p 9651:9651 --name lamina1 lamina1
## Check bootstrap
    docker exec -it lamina1 /app/lamina1/check-bootstrap.sh
## Get Node Id
    docker exec -it lamina1 /app/lamina1/get_my_nodeid.sh