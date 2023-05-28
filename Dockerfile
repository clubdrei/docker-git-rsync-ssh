FROM ubuntu:20.04
# Set timezone to Europe/Vienna by default
# https://web.archive.org/web/20230528111946/https://dev.to/0xbf/set-timezone-in-your-docker-image-d22
# https://web.archive.org/web/20230528113607/https://blog.programster.org/docker-ubuntu-20-04-automate-setting-timezone
ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && apt-get update -y && apt-get install openssh-client git rsync tzdata -y
