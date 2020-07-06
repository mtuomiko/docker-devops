FROM ubuntu:16.04

WORKDIR /work

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && apt-get install -y nodejs git

RUN git clone https://github.com/docker-hy/backend-example-docker.git .

RUN npm install
CMD npm start
EXPOSE 8000

