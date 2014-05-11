#Dockerfile for RHQ  

FROM jerr/rhq-agent-debug

MAINTAINER Jeremie Lagarde <jer@printstacktrace.org>


# install missing commands
RUN yum -y install httpd
RUN systemctl enable httpd.service

EXPOSE 80

