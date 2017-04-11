#LAST MODIFIED 28/2/2017
FROM centos:centos7
MAINTAINER Bukhary Ikhwan <ikhwan.ismail@mimos.my>

ENV AGRAPH_VERSION 5.0.2-1
ENV AGRAPH_USER super
ENV AGRAPH_PASSWORD super
#run allegrograph as this user
ENV AGRAPH_RUNAS_USER root 
####INSTALL ALLEGROGRAPH####
ADD agraph-5.0.2-1.x86_64.rpm /entrypoint/
ADD configure-agraph.sh /entrypoint/
RUN rpm -ivh /entrypoint/agraph-5.0.2-1.x86_64.rpm
RUN /bin/rm /entrypoint/agraph-5.0.2-1.x86_64.rpm
RUN mkdir -p /var/run/agraph /var/lib/agraph/settings /var/log/agraph

###SETUP THE CONTAINER
VOLUME ["/var/lib/agraph"]
EXPOSE 10035

###COPY ENTRYPOINT
ADD docker-entrypoint.sh /usr/local/bin/
RUN ln -s /usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat

ENTRYPOINT ["docker-entrypoint.sh"]
