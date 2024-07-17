FROM mcr.microsoft.com/devcontainers/base:bullseye

ENV GIT_PYTHON_REFRESH=quiet
ENV TZ=Europe/Amsterdam
ENV PYTHON_VERSION=3.9
ENV HOME="/home/vscode"


RUN apt-get update && \
    apt-get -y install sudo
# curl
RUN sudo apt-get install curl -y
# Install just
RUN wget -qO - 'https://proget.makedeb.org/debian-feeds/prebuilt-mpr.pub' | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null && \
    echo "deb [arch=all,$(dpkg --print-architecture) signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg] https://proget.makedeb.org prebuilt-mpr $(lsb_release -cs)" | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list && \
    apt-get update && \
    apt-get -y install just && \
    rm -rf /var/lib/apt/lists/*

# pre-commit
RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install pre-commit
# vim
RUN sudo apt install vim -y &&\
# git
    sudo apt install git -y
# vscode config
RUN usermod -aG sudo vscode

RUN chmod -R 777 /home/vscode

