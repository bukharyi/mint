#LAST MODIFIED 28/2/2017
FROM centos:centos7
MAINTAINER Bukhary Ikhwan <ikhwan.ismail@mimos.my>

ENV AGRAPH_VERSION 5.0.2-1
ENV AGRAPH_USER super
ENV AGRAPH_PASSWORD super
#run allegrograph as this user
ENV AGRAPH_RUNAS_USER root 
####INSTALL ALLEGROGRAPH####
RUN rpm -Uvh http://franz.com/ftp/pri/acl/ag/ag5.0.2/linuxamd64.64/agraph-5.0.2-1.x86_64.rpm
RUN mkdir -p /var/run/agraph /var/lib/agraph/settings /var/log/agraph

###SETUP THE CONTAINER
VOLUME ["/var/lib/agraph"]
EXPOSE 10035

###COPY ENTRYPOINT
ADD docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]
