# Apache Drill 1.8 Docker container

Embedded and distributed mode. See docker-compose.yml to run distributed mode

## Embedded Mode

- _gallna/apache-drill:sqlline_ - `docker run -it --name drillbit1 gallna/apache-drill:sqlline`

### Rest API

Get Drillbit status: `http://CONTAINER_IP:8047/status` Get all submitted queries: `http://CONTAINER_IP:8047/queries` Get status of a given query:`http://CONTAINER_IP:8047/query/{QUERY_ID}`

## Distributed Mode

_gallna/apache-drill:drillbit_ -

`docker-compose up drillbit1 drillbit2` wait 5-15 sec and run

`docker-compose run zk-client` or `docker-compose run drillbit-client`

Issue the following query to check the Drillbits running in the cluster: `SELECT * FROM sys.drillbits;`

To exit the Drill shell, issue the following command: `!quit`
