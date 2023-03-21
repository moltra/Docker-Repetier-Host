FROM ubuntu:latest


RUN echo "America/New_York" > /etc/timezone
RUN ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime

### Install basic packages.
RUN apt-get update -qq && apt-get -qqy install \
    wget \
    xz-utils \
    libmono-system-windows-forms4.0-cil \
    libgtk2.0-0 \
    libmono-system-serviceprocess4.0-cil \
    libglew2.0

### Install dependencies for Slic3r.
RUN apt -qqy install \
    libsm6 \
    freeglut3 \
    libglu1-mesa \
    libxmu6

### Install RepetierHost
WORKDIR /opt/
RUN wget --quiet \
    https://download3.repetier.com/files/host/linux/repetierHostLinux_2_3_1.tgz

RUN tar --gzip --extract -f repetierHostLinux_2_3_1.tgz

### Install Slic3r

RUN wget --quiet \
    https://github.com/slic3r/Slic3r/releases/download/1.3.0/slic3r-1.3.0-linux-x64.tar.bz2

RUN tar --gzip --extract -f slic3r-1.3.0-linux-x64.tar.bz2

RUN wget --quiet \
    https://github.com/prusa3d/PrusaSlicer/releases/download/version_2.5.1/PrusaSlicer-2.5.1+linux-x64-GTK3-202303151247.tar.bz2

RUN tar --bzip --extract -f PrusaSlicer-2.5.1+linux-x64-GTK3-202303151247.tar.bz2

WORKDIR /opt/RepetierHost/
