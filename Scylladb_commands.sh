#!/bin/bash
docker run --name some-scylla -d scylladb/scylla
docker exec -it some-scylla nodetool status
docker exec -it some-scylla cqlsh
exit
docker run --name some-scylla2 -d scylladb/scylla --seeds="$(docker inspect --format='{{ .NetworkSettings.IPAddress }}' some-scylla)"
sudo mkdir -p /var/lib/scylla/data /var/lib/scylla/commitlog
docker exec -it some-scylla supervisorctl restart scylla