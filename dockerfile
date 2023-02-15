FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=password

COPY ./workoutapicore/SqlData/Tables/ /docker-entrypoint-initdb.d/ 

