FROM debian:latest

RUN apt-get update && apt-get install curl -y
RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
RUN rm get-docker.sh
RUN apt-get install docker-compose -y

VOLUME ["/data"]
WORKDIR /data
CMD docker-compose up