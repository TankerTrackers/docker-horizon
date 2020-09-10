FROM breki/common:latest

RUN apt-get update -y           \
 && apt-get upgrade -y          \
 && apt-get install -y cron     \
 && mkdir -p /etc/supervisor.d  \
 && mkdir -p /etc/cron.d

VOLUME /var/log/horizon

# Get configuration files in place.
COPY ./supervisord.conf /etc/supervisord.conf
COPY ./horizon.conf /etc/supervisor.d/horizon.conf

# Get the Cron job in place.
COPY ./cron.tab /etc/cron.d/cron.tab
RUN chmod 0644 /etc/cron.d/cron.tab
RUN crontab /etc/cron.d/cron.tab
RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log

CMD ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]
