


docker run -it --rm -v $HOME/cache:/root/.nuget/packages webapp:test
docker run -it --rm -v $PWD/publish:/root/publish -v $PWD/packages:/root/.nuget/packages webapp:test
docker build -t webapp:release -f ./dockerfile/release .



scp -o StrictHostKeyChecking=no ./scripts/getReleaseFromDockerHubAndStart.sh joe443@159.203.33.172:~/
ssh joe443@159.203.33.172 "chmod +x getReleaseFromDockerHubAndStart.sh"
ssh joe443@159.203.33.172 "sh getReleaseFromDockerHubAndStart.sh"
