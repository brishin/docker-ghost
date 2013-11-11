# Docker-Ghost
This repository is made to run Ghost in Docker, the Dockerfile installs Node.js and NPM, adds Ghost to the image and runs Ghost in a development environment.

# IP configuration
I've changed the standard IP on which the Ghost dev environment runs to 0.0.0.0 to make it bind with any IP, the normal setting is 127.0.0.1, you can change this in the config.example.js added in this repository.

# Running Docker-Ghost

Install Docker using the Docker documentation that you can find here: https://www.docker.io/gettingstarted/

Build the ghost-docker (execute command below in the folder you cloned the repository to):

```sudo docker build -t ghost github.com/brishin/docker-ghost```

Run the ghost-docker:

```sudo docker run -d ghost```

Find which port your instance is exposed to:

```sudo docker port container-id 2368```

Point your webbrowser to:

```http://serverip:port```

# Adding your user to Ghost
Follow the manual provided by Ghost, for further installation: http://docs.ghost.org/
