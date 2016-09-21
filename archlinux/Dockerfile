FROM greyltc/archlinux 
#base was too old
MAINTAINER Kaitsh "Kaitsh@d-git.de"

USER root
RUN pacman -Syu --noconfirm && \
    pacman -S sudo vim --noconfirm

# Add nonroot user and setup environment
RUN groupadd -r pwner && \
  useradd -r -g pwner -G wheel -d /home/pwner -s /bin/bash -c "Nonroot User" pwner && \
    mkdir /home/pwner

#setup sudo
#RUN echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

USER pwner
ENV HOME /home/pwner
ENV USER pwner
WORKDIR /home/pwner/

CMD ["bash"]
