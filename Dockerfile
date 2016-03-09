FROM java:7

# cron
#RUN yum -y install crontabs
#RUN cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
#RUN crontab /home/nannohi/whatday2/crontab.file

RUN apt-get update && apt-get install -y cron && rm -r /var/lib/apt/lists/*

RUN echo '*/1 * * * * echo "Hello!!"' >> /etc/crontab

CMD cron -f
