all: up

up:
	echo "127.0.1.1 hharit.42.fr" | sudo tee -a /etc/hosts
	docker-compose -f ./srcs/docker-compose.yaml up --build -d

down:
	docker-compose -f ./srcs/docker-compose.yaml down

fclean:
	docker-compose -f ./srcs/docker-compose.yaml down --rmi all
