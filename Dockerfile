FROM ubuntu:jammy
ARG DEBIAN_FRONTEND=noninteractive

#update & install required
RUN apt update && apt upgrade && apt install -y wget net-tools iputils-ping nano libasound2 alsa-utils

WORKDIR /usr/bin/
RUN wget -q https://github.com/as-cmi/docker-Spotifyd/raw/main/spotifyd && \
    chmod +x spotifyd

WORKDIR /root/.config/spotifyd/
RUN wget -q https://raw.githubusercontent.com/as-cmi/docker-Spotifyd/main/spotifyd.conf

#start Asterisk
CMD spotifyd --no-daemon && /bin/bash
