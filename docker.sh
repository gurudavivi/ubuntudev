
#!/bin/bash

clear

# docker volume create portainer_data
# docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer


# docker run -it ubuntu

docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# docker run -it ubuntu


# git clone https://github.com/gurudavivi/ubuntudev.git && cd ubuntudev


# apt update -y && apt install git sudo -y && git clone https://github.com/gurudavivi/ubuntudev.git && cd ubuntudev
