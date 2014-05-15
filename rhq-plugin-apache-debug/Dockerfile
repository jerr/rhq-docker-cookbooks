#Dockerfile for RHQ  

FROM jerr/rhq-agent-debug

MAINTAINER Jeremie Lagarde <jer@printstacktrace.org>


# install httpd server
RUN yum -y install httpd
RUN yum -y install augeas

# launch httpd
RUN echo "su root -c 'httpd -k start';"  >> /launch.sh

EXPOSE 80
