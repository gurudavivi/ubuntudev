
#!/bin/bash

clear

# docker volume create portainer_data
# docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer




docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# docker run -it ubuntu --name ubuntu-setup

docker create --name vivi1 -it ubuntu bash
docker create --name vivi2 -it ubuntu bash
docker create --name vivi3 -it ubuntu bash
docker create --name vivi4 -it ubuntu bash




docker create 

docker run -it --name vivi ubuntu


docker run -it --name vivi ubuntu





# apt update -y && apt install git sudo -y && git clone https://github.com/gurudavivi/ubuntudev.git && cd ubuntudev

