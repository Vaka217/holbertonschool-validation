#!bin/bash
docker run --name setup --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash
make build
exit