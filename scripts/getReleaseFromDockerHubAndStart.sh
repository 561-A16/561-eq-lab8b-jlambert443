#!bin/bash
set –v docker pull <image_release_sur_docker_hub>
#docker stop $(docker ps -a -q)
#docker rm $(docker ps -a -q)
docker run -itd -p <port_host>:<port_docker> <image_release_sur_docker_hub>
