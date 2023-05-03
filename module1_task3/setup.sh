service docker start
docker run --name setup --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
docker exec setup apt-get update
docker exec setup apt-get install -y hugo make
docker exec make build
exit