FROM ubuntu:20.04
RUN apt-get update -y && apt-get install openssh-client git rsync -y
