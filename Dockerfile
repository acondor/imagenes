FROM httpd:2

ENV DB_HOST=srv-mysql-ins
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && touch /archivo.txt && apt-get install vim -y

COPY index.html /usr/local/apache2/htdocs/
EXPOSE 80 443

WORKDIR /


