all: up

up:
	docker-compose -f ./srcs/docker-compose.yaml up --build -d

down:
	docker-compose -f ./srcs/docker-compose.yaml down

fclean:
	docker-compose -f ./srcs/docker-compose.yaml down --rmi all
