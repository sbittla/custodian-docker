FROM centos:7
RUN yum update -y \
	&& yum install -y https://centos7.iuscommunity.org/ius-release.rpm \ 
    && yum install -y python36 python36-pip python36-devel python-setuptools python-setuptools-devel \
	&& easy_install pip nose tornado \
	&& pip install c7n --ignore-installed six
	
RUN pip3 install --upgrade awscli	
RUN export PATH=/root/.local/bin/aws:$PATH
RUN mkdir /custodian-policies
ADD $PWD/policies/* /custodian-policies/

VOLUME /reports