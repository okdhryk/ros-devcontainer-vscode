#TO okdhryk/devcontainer-vscode:melodic-desktop
FROM devrt/ros-devcontainer-vscode:melodic-desktop


MAINTAINER Hiroyuki Okada <okdhryk@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

USER root
RUN apt-get update && \
    apt-get install -y x11-apps && \
    apt-get clean

USER developer
