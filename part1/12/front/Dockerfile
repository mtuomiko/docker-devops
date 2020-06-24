FROM ubuntu:16.04

WORKDIR /work

RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

COPY frontend-example-docker /work/

RUN npm install
CMD npm start
EXPOSE 5000
ENV API_URL=http://localhost:8000
