FROM java:7

# cron
#RUN yum -y install crontabs
#RUN cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
#RUN crontab /home/nannohi/whatday2/crontab.file

RUN apt-get install -y cron

CMD cron -f
