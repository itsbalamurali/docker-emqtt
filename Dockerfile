FROM ubuntu:latest
MAINTAINER Balamurali Pandranki <balamurali@live.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install wget unzip -y
RUN mkdir -p /opt
WORKDIR /opt
RUN wget http://emqtt.io/static/brokers/emqttd-ubuntu64-0.15.0-beta-20160131.zip
RUN unzip ./emqttd-ubuntu64-0.15.0-beta-20160131.zip
EXPOSE 1883
EXPOSE 8883
WORKDIR emqttd/bin
CMD ["./emqttd" "start"]
