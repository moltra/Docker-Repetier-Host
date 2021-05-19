### Dockerfile for a Debian distribution with the latest stable GNU
### Guile version.

FROM fedora:latest
MAINTAINER Artyom V. Poptsov <poptsov.artyom@gmail.com>

RUN yum -y update
RUN yum -y install \
    which \
    git \
    automake \
    autoconf \
    texinfo \
    guile \
    guile-devel \
    guile22 \
    guile22-devel \
    libtool \
    libssh-devel

