FROM ubuntu:jammy
ARG DEBIAN_FRONTEND=noninteractive

#update & install required
RUN apt update && apt upgrade && apt install -y wget net-tools iputils-ping nano libasound2

WORKDIR
RUN wget -q

WORKDIR
RUN wget -q

