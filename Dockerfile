FROM httpd:2

ENV DB_HOST=srv-mysql-ins
ENV DB_NAME=NOMBRE-BD
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && touch /archivo.txt && apt-get install vim -y

COPY index.html /usr/local/apache2/htdocs/
COPY index1.html /usr/local/apache2/htdocs/

EXPOSE 80

WORKDIR /




