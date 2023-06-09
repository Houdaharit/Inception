all: build up

build:
	mkdir -p /home/hharit/data/wordpress
	mkdir -p /home/hharit/data/mariadb
	docker-compose -f ./srcs/docker-compose.yaml build

up:
	docker-compose -f ./srcs/docker-compose.yaml up

down:
	docker-compose -f ./srcs/docker-compose.yaml down

stop:
	docker-compose -f ./srcs/docker-compose.yaml stop

clean:
	docker-compose -f ./srcs/docker-compose.yaml down --rmi all
	docker volume rm $$(docker volume ls -q);\
	sudo rm -rf /home/hharit/data

fclean:
	docker system prune --force --all

re: clean all
