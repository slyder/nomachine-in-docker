# Dockerfile to install NoMachine free v. 7 with MATE interface
FROM debian:buster
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils vim xterm cups curl
ENV USER nomachine
ENV PASSWORD nomachine

RUN apt-get install -y mate-desktop-environment-core

# Installation of ssh is required if you want to connect to NoMachine server using SSH protocol when supported.
# Comment it out if you don't need it or if you use NoMachine free.

RUN apt-get install -y ssh \
    && service ssh start

ENV DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
RUN apt-get install -y pulseaudio \
    && mkdir -p /var/run/dbus

RUN curl -fSL "https://www.nomachine.com/free/linux/64/deb" -o nomachine.deb \
    && dpkg -i nomachine.deb \
    && groupadd -r ${USER} -g 433 \
    && useradd -u 431 -r -g ${USER} -d /home/${USER} -s /bin/bash ${USER} \
    && mkdir /home/${USER} \
    && chown -R ${USER}:${USER} /home/${USER} \
    && echo "${USER}:${PASSWORD}" | chpasswd
ADD nxserver.sh /
ENTRYPOINT ["/nxserver.sh"]

RUN /etc/init.d/dbus start
