FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root

COPY ./workoutapicore/SqlData/Tables/ /docker-entrypoint-initdb.d/ 

