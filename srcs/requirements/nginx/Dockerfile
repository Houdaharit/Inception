FROM debian:buster

RUN apt-get update && apt-get install nginx -y

RUN apt-get install openssl

COPY conf/default.conf /etc/nginx/conf.d

COPY conf/private.key /etc/ssl

COPY conf/certificate.crt /etc/ssl

EXPOSE 443

COPY ./tools/script.sh .

ENTRYPOINT ["/bin/bash", "script.sh"] 

CMD ["nginx", "-g", "daemon off;"]
