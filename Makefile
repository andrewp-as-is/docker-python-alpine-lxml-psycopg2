# https://hub.docker.com/_/python
SSH_HOSTNAME:=ubuntu@aws

all:
	scp Dockerfile $(SSH_HOSTNAME):Dockerfile
	#sudo docker login --username andrewpasis

	ssh $(SSH_HOSTNAME) sudo docker build -t andrewpasis/python:3.8-alpine-lxml-psycopg2 .
	ssh $(SSH_HOSTNAME) sudo docker push andrewpasis/python:3.8-alpine-lxml-psycopg2
