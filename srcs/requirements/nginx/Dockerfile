FROM debian:stable
RUN apt-get update 
RUN apt-get install nginx -y
COPY index.html /usr/share/nginx/html
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
#Not done yet
