#!bin/bash
set –v docker pull webapp:release
docker stop webapp:release
docker rm webapp:release
docker run -itd -p 6539:5000 webapp:release
