docker run -it --rm -v $HOME/cache:/root/.nuget/packages webapp:test
docker run -it --rm -v $PWD/publish:/root/publish -v $PWD/packages:/root/.nuget/packages webapp:test
docker build -t webapp:release -f ./dockerfile/release .

docker tag webapp:release joe443/webapp:latest
docker login -u=$USERNAME -p=$PASSWORD
docker push joe443/webapp:latest

scp -o StrictHostKeyChecking=no ./scripts/getReleaseFromDockerHubAndStart.sh u1064072@159.203.33.172:~/
ssh u1064072@159.203.33.172 "chmod +x getReleaseFromDockerHubAndStart.sh"
ssh u1064072@159.203.33.172 "sh getReleaseFromDockerHubAndStart.sh"
