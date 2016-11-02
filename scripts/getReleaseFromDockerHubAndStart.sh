#!bin/bash
set –v
docker pull joe443/webapp
docker stop joe443/webapp
docker rm joe443/webapp
docker run -itd -p 6539:5000 joe443/webapp
