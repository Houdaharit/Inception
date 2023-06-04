all: build up

build:
	#echo "127.0.0.1 hharit.42.fr" | sudo tee -a /etc/hosts
	mkdir -p /Users/hharit/data/wordpress
	mkdir -p /Users/hharit/data/mariadb
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
	rm -rf /Users/hharit/data

fclean:
	docker system prune --force --all

re: clean all
