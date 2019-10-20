FROM breki/common

RUN mkdir -p /etc/supervisor.d

VOLUME /var/log/horizon

COPY ./supervisord.conf /etc/supervisord.conf 
COPY ./horizon.conf /etc/supervisor.d/horizon.conf

CMD ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]
