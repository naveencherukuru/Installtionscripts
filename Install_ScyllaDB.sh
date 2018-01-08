sudo curl -o /etc/apt/sources.list.d/scylla.list -L http://repositories.scylladb.com/scylla/repo/ac074594c7286bea642e577ba06e721a/ubuntu/scylladb-2.0-xenial.list
sudo apt-get update --allow-unauthenticated
yes Y|sudo apt-get install scylla --allow-unauthenticated
echo "yes
yes 
yes
yes
yes
yes
yes
yes
yes
no
yes
yes
yes" | sudo scylla_setup

sudo systemctl start scylla-server
nodetool status