#Dockerfile for RHQ  

FROM jerr/rhq

MAINTAINER Jeremie Lagarde <jer@printstacktrace.org>

RUN echo "su root -c 'sed -i 's/^#RHQ_AGENT_ADDITIONAL_JAVA_OPTS/RHQ_AGENT_ADDITIONAL_JAVA_OPTS/g' /opt/rhq-agent/bin/rhq-agent-env.sh';" >> /launch.sh
RUN echo "su root -c '/opt/rhq-server-${RHQ_VERSION}/bin/rhqctl --agent restart';"  >> /launch.sh

EXPOSE 9797

