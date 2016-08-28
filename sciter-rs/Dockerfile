#Forked from https://github.com/schickling/dockerfiles/tree/master/rust

FROM ubuntu:16.10
MAINTAINER Kaitsh "Kaitsh@d-git.de"

# needed by cargo
ENV USER root

ADD install.sh install.sh
RUN chmod +x install.sh && ./install.sh && rm install.sh

VOLUME ["/source"]
WORKDIR /source
CMD ["bash"]
