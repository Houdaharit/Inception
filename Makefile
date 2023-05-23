all: up

up:
	#echo "127.0.1.1 hharit.42.fr" | sudo tee -a /etc/hosts
	#mkdir -p /home/hharit/data/wordpress
	docker-compose -f ./srcs/docker-compose.yaml up --build -d

down:
	docker-compose -f ./srcs/docker-compose.yaml down

clean:
	docker-compose -f ./srcs/docker-compose.yaml down --rmi all
	docker volume rm $$(docker volume ls -q);\
	#docker network rm $$(docker network ls -q);\

fclean:
	docker system prune --force --all

re: clean all
