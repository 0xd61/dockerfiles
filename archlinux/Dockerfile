FROM base/archlinux
MAINTAINER Kaitsh "Kaitsh@d-git.de"

USER root
RUN pacman -Syu --noconfigm && \
    pacman -S sudo vim --noconfirm

# Add nonroot user and setup environment
RUN groupadd -r pwner && \
  useradd -r -g pwner -G sudo -d /home/pwner -s /bin/bash -c "Nonroot User" pwner && \
    mkdir /home/pwner

USER pwner
ENV HOME /home/pwner
ENV USER pwner
WORKDIR /home/pwner/

CMD ["bash"]
