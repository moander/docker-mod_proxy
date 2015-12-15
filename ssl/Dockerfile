FROM moander/mod_proxy

RUN apt-get update && apt-get install -y --no-install-recommends openssl \
 && rm -rf /var/lib/apt/lists/* \
 && sed -i '2imake-self-signed-if-missing' /usr/local/bin/httpd-foreground

COPY ./make-self-signed-if-missing /usr/local/bin

COPY ./conf.d /usr/local/apache2/conf/conf.d

EXPOSE 80 443 1080

