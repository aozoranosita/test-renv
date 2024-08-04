how to use
pull this repository

if you don't have docker installed, please install it with commandline, that means if you are using windows, please install docker inside wsl. https://docs.docker.com/engine/install/ubuntu/ is reference.

pull docker image from docker hub with code below

docker pull arut0/test-renv
see dockerhub for details
https://hub.docker.com/r/arut0/test-renv

copy .env.example to .env and modify it depending on your environment, make directory on RENV_PATHS_CACHE_HOST
in this repository, in the level that you can find docker-compose.yml, run
docker compose up -d

open http://localhost:8787 and connect to RStudio Server 

open project named test_renv.Rproj

execute test.R
