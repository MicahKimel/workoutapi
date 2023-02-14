FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=$DockerPass

COPY ./workoutapicore/SqlData/Tables/User.sql /docker-entrypoint-initdb.d/
#COPY ./workoutapicore/SqlData/Tables/ExerciseType.sql /docker-entrypoint-initdb.d/
#COPY ./workoutapicore/SqlData/Tables/ExerciseSet.sql /docker-entrypoint-initdb.d/
