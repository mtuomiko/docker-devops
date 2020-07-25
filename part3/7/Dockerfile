# Separate build stage with Node installed. Small size doesn't matter that
# much since it won't end up in the final image
FROM node:12-alpine3.12 as build-stage

WORKDIR /app

# Installs git, clones project from repo, installs dependencies and builds
RUN apk add --no-cache git && \
    git clone https://github.com/mtuomiko/docker-devops-anecdotes.git . && \
    npm install && \
    npm run build

# Final image based on lightweight Node Alpine image with Node installed
FROM node:12-alpine3.12

# Copy static files from build stage
# Could also use e.g. /home/node/app folder
COPY --from=build-stage /app/build/ /app/build/

WORKDIR /app

# Set global npm installs to user directory and make available on PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# Install serve globally for actually serving the static files
RUN npm install -g serve

# Change user to node so we are not running a web facing service as root
# Luckily we didn't end up with any owner issues even though all build files 
# are owned by root.
USER node

# Use port above 1023 as we are running a non-root user. Port can be then 
# mapped in Docker to whatever we want.
CMD serve -s -l 3000 build

EXPOSE 3000

