FROM httpd:2.4

RUN apt-get update && apt-get install -y --no-install-recommends nano \
 && rm -rf /var/lib/apt/lists/*

RUN mv /usr/local/apache2/conf /usr/local/apache2/originalconf

COPY ./apache2 /usr/local/apache2

EXPOSE 1080

#COPY ./bin /usr/local/bin
#CMD [ "custom-httpd-foreground" ]

