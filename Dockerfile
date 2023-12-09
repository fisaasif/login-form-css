FROM httpd:alpine3.18

COPY . /usr/local/apache2/htdocs/

EXPOSE 80
