FROM jenkins/jenkins:lts-centos
USER root
RUN yum update -y
RUN yum install redhat-rpm-config -y
RUN yum install -y git
RUN yum install -y wget
RUN yum install -y python3
RUN cp /usr/bin/python3 /usr/bin/python
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN export PATH=~/.local/bin:$PATH
RUN source ~/.bash_profile
RUN yum install gcc  krb5-devel krb5-workstation -y
RUN pip3 install awscli --upgrade --user
RUN yum install python3-devel -y
RUN export PATH=~/.local/bin:$PATH
RUN source ~/.bash_profile
