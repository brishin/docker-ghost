# Docker-Ghost
This repository is made to run Ghost in Docker, the Dockerfile installs Node.js and NPM, adds Ghost to the image and runs Ghost.

# Running Docker-Ghost

Install Docker using the Docker documentation that you can find here: https://www.docker.io/gettingstarted/

Build the ghost-docker (execute command below in the folder you cloned the repository to):

    sudo docker build -t brishin/ghost github.com/brishin/docker-ghost

Allow docker to run publicly.
Warning: changes here will not be saved due to docker's data model.

    sudo docker run -d -p 80:2368 -e GHOST_URL=http://my-ghost-blog.com brishin/ghost

# Config
* ```GHOST_URL``` - URL where ghost is available publically.

# Adding your user to Ghost
Follow the manual provided by Ghost, for further installation: http://docs.ghost.org/
