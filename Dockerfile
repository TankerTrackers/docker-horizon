FROM breki/common

RUN mkdir -p /etc/supervisor.d

VOLUME /var/log/horizon

COPY ./supervisord.conf /etc/supervisord.conf 
COPY ./horizon.conf /etc/supervisor.d/horizon.conf

RUN apt-get update \
 && apt-get install -y \
    libfreetype6-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    nano \
    libgmp-dev \
    libldap2-dev \
    netcat \
    sqlite3 \
    libsqlite3-dev \
 && docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/ \
    --with-webp-dir=/usr/include/ \
    --with-jpeg-dir=/usr/include/ \
 && docker-php-ext-install gd pdo_mysql gmp ldap sysvmsg

CMD ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]
