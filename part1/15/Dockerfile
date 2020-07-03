FROM ubuntu:16.04

WORKDIR /work

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

RUN apt-get install -y git

RUN git clone https://github.com/mtuomiko/full-stack-open.git

WORKDIR full-stack-open/part1/anecdotes/

RUN npm install
RUN npm run build

RUN npm install -g serve

CMD serve -s -l 8080 build

EXPOSE 8080
