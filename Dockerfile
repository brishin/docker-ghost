# DOCKER-VERSION 0.6.6
# Install Ghost blogging platform

FROM ubuntu:12.10
MAINTAINER Brian Shin, brian@brishin.com
WORKDIR /data/ghost

# Install dependencies for node installation
RUN apt-get install -y python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update

# Install unzip
RUN apt-get install -y unzip
# Install wget
RUN apt-get install -y wget
# Install node
RUN apt-get install -y nodejs
RUN wget -O - https://npmjs.org/install.sh | sh

# Add Ghost zip to image
RUN wget https://en.ghost.org/zip/ghost-0.3.3.zip -O /tmp/ghost.zip
# Unzip Ghost zip to /data/ghost
RUN unzip -uo /tmp/ghost.zip -d /data/ghost

# Add custom config js to /data/ghost
ADD ./config.example.js /data/ghost/config.js
# Install Ghost with NPM
RUN cd /data/ghost/ && npm install --production
# Expose port 2368
EXPOSE 2368
# Run Ghost
ENTRYPOINT ["npm","start"]
