FROM node:12-alpine3.12

WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    npm install && \
    apk del git && \
    chown node /app

USER node

CMD npm start

EXPOSE 5000
ENV API_URL=http://localhost:8000

