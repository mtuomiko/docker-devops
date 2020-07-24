# Deployer script
deployer script assumes one argument as Git repository URL. This is provided when running the docker-compose deployer service. Access to host machine Docker daemon and Docker login credentials are provided to the container in bind mounts defined in `docker-compose.yml`.

### Limitations
- hard-coded Docker username (credentials are not used for anything other than login), could be easily provided as ENV or argument if needed
- Docker login depends on the `~/.docker/config.json` clear text (base64) credentials file so obviously not an universal solution

### Usage
`docker-compose run deployer <Git repository URL>`

