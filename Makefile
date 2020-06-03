# https://hub.docker.com/_/python
SSH_HOSTNAME:=aws
DOCKER_NAME:=andrewpasis/python:3.8-alpine-lxml-psycopg2

all:
	scp Dockerfile $(SSH_HOSTNAME):Dockerfile
	# sudo docker login --username andrewpasis

	ssh $(SSH_HOSTNAME) sudo docker build -t $(DOCKER_NAME) .
	ssh $(SSH_HOSTNAME) sudo docker push $(DOCKER_NAME)

