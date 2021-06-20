# local_setup

## Start postgres db
docker run --name k3s-pg -p 127.0.0.1:5432:5432 -e POSTGRES_DB=k3sdb -e POSTGRES_PASSWORD=pa55w0rd -e POSTGRES_USER=puser -d postgres:13.3

### Not a bad tool to have
sudo apt install postgresql-client-common
sudo apt-get install postgresql-client-12

## k3s
curl -sfL https://get.k3s.io | sh -s - server --datastore-endpoint="postgres://puser:pa55w0rd@127.0.0.1/k3sdb?sslmode=disable"

## TODO
Use vault to manage sudo passwords with ansible
