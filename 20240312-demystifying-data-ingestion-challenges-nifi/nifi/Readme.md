**Run Containers**

docker-compose up -d --build
All login credentials for all services can be found in the docker compose file

**Install postgers driver**

PostgreSQL Driver in the container

docker exec -it nifi_container_persistent curl https://jdbc.postgresql.org/download/postgresql-42.2.23.jar --output /opt/nifi/nifi-current/lib/postgresql-42.2.23.jar

**Driver setup in Apache Nifi**

Configure DBCPConnectionPool with the following parameters:

URL: jdbc:postgresql://postgres:5432/mydb

Diver Class: org.postgresql.Driver

Driver Location: file:///opt/nifi/nifi-current/lib/postgresql-42.2.23.jar

Schemaname: public

database username: as per docker compose file
database password: as per docker compose file

**Copy files to the docker container**

docker exec -it nifi_container_persistent /bin/bash
mkdir files
docker cp Titanic.parquet nifi_container_persistent:/opt/nifi/nifi-current/files
