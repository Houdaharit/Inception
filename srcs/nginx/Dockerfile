FROM debian:stable
RUN sudo apt update
RUN sudo apt dist-update -y
RUN sudo apt install nginx -y
COPY default /etc/nginx/sites-available/default
CMD ["nginx", "-g", "daemon off;"]
#Not done yet
