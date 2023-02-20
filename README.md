# workoutapi

An Api for the ReactNative Project

run with

`dotnet run --project workoutapicore.csproj`

Swagger url

`http://localhost:5036/swagger/index.html`

list docker images

`docker images`

list docker containers

`docker container ls`
`docker ps`

create docker volume for data to persist

`docker volume create test-volume`

build docker image from dockerfile

`docker build -t mysql_db .`

docker run

`docker run -d -p 3306:3306 mysql_db`

docker interact

`docker exec -it 67f24f5719b7 /bin/bash`

docker stop it

`docker stop 67f24f5719b7`

login

`mysql -proot`

force recreate docker compose

`docker-compose up -d --force-recreate`

