FROM ubuntu:latest

MAINTAINER Balamurali Pandranki <balamurali@live.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y wget unzip

RUN mkdir -p /opt

WORKDIR /opt

RUN wget http://emqtt.io/static/brokers/emqttd-ubuntu64-0.15.0-beta-20160131.zip

RUN unzip ./emqttd-ubuntu64-0.15.0-beta-20160131.zip

COPY start.sh /emqtt_start.sh

EXPOSE 1883 8883

CMD ["/emqtt_start.sh"]