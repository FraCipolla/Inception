NAME = inception

all: prune reload

linux:
	@ sudo echo "127.0.0.1 mcipolla.42.fr" >> /etc/hosts
	
stop:
	@ sudo docker compose -f srcs/docker-compose.yml down

clean: stop
	@ sudo rm -rf ~/Desktop/inception

prune: clean
	@ sudo docker system prune -f

reload: 
	@ sudo docker compose -f srcs/docker-compose.yml up --build

.PHONY: linux stop clean prune reload all
