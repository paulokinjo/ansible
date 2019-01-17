FROM centos:7

LABEL maintainer="Paulo Kinjo <paulokinjo@hotmail.com>"
LABEL description="Configure a centos image with ansible"

RUN yum install epel-release -y
RUN yum install ansible \
                vim \
                openssh-server \
                openssh-clients \
                openssh -y

# gen dummy keys, centos doesn't autogen them like ubuntu does
RUN /usr/bin/ssh-keygen -A

# Set SSH Configuration to allow remote logins without /proc write access
RUN sed -ri 's/^session\s+required\s+pam_loginuid.so$/session optional pam_loginuid.so/' /etc/pam.d/sshd

RUN mkdir -vp /var/run/sshd
RUN echo 'root:screencast' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

RUN echo "Docker!" | passwd --stdin root 

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
