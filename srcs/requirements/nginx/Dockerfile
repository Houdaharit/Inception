FROM debian:stable
RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install openssl -y
COPY conf /etc/nginx
CMD ["nginx", "-g", "daemon off;"]
#Not done yet
