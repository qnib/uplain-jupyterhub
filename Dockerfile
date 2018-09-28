ARG FROM_IMG_REGISTRY=docker.io
ARG FROM_IMG_REPO=qnib
ARG FROM_IMG_NAME=uplain-init
ARG FROM_IMG_TAG=bionic-20180821_2018-09-27
ARG FROM_IMG_HASH=''
FROM ${FROM_IMG_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

RUN apt-get update
RUN apt-get install -y python3-dev python3-pip
RUN pip3 install jupyterhub
