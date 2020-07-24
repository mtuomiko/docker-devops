FROM ubuntu:16.04

WORKDIR /app

RUN apt-get update && apt-get install --no-install-recommends -y \
    git apt-transport-https ca-certificates curl gnupg-agent \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable" && \
    apt-get update && apt-get install --no-install-recommends -y docker-ce-cli

COPY deployer.sh .

ENTRYPOINT ["/app/deployer.sh"]

