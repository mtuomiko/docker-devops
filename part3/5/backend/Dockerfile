FROM node:12-alpine3.12

WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/backend-example-docker.git . && \
    npm install && \
    apk del git && \
    chown node /app/node_modules

USER node

CMD npm start

EXPOSE 8000
ENV FRONT_URL=http://localhost:5000

