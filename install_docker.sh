sudo rm /etc/apt/sources.list.d/docker.list
sudo curl -Ssl https://get.docker.com | sed 's/9)/10)/' | sh

sudo apt install -y vim
