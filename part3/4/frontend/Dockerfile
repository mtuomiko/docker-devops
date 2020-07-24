FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update && apt-get install --no-install-recommends -y \
    curl git ca-certificates && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install --no-install-recommends -y nodejs && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    npm install && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown app /app

USER app

CMD npm start

EXPOSE 5000
ENV API_URL=http://localhost:8000

