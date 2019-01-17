FROM ubuntu

LABEL maintainer="Paulo Kinjo <paulokinjo@hotmail.com>"
LABEL description="Configure a Ubuntu image with ansible"

RUN apt-get update -y && \
    apt-get install \
      ansible \
      vim \
      net-tools \
      iputils-ping -y

ENTRYPOINT ["/bin/bash"]


