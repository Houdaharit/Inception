FROM debian:stable
RUN apt-get update && apt-get install nginx -y
RUN sudo apt-get install openssl
COPY conf/private.key /etc/ssl
COPY conf/certificate.crt /etc/ssl
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
