FROM ubuntu

LABEL maintainer="Paulo Kinjo <paulokinjo@hotmail.com>"
LABEL description="Configure a Ubuntu image with ansible"

RUN apt-get update -y && \
    apt-get install \
      ansible \
      vim \
      sshpass \
      net-tools \
      ssh \
      openssh-client \
      openssh-server \
      iputils-ping -y

RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
 
RUN ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

