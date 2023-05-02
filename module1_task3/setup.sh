#!bin/bash
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
docker start hugito
docker exec hugito /bin/bash -c "apt-get update && apt-get install -y hugo make; make build"