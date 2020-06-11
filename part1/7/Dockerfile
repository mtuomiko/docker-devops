FROM ubuntu:16.04

# Setup
WORKDIR /usr/app
COPY curl_script.sh .
RUN chmod +x ./curl_script.sh

# Install curl
RUN apt-get update && apt-get install -y curl

# Run script
CMD ["./curl_script.sh"]

