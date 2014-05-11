#Dockerfile for RHQ  

FROM jerr/rhq

MAINTAINER Jeremie Lagarde <jer@printstacktrace.org>

ENTRYPOINT \
  su -l postgres -c " pg_ctl -l server.log -w stop; pg_ctl -l server.log -w start; ";\
  su root -c '/opt/rhq-server-${RHQ_VERSION}/bin/rhqctl install  --agent-preference="127.0.0.1" --start --agent --server --storage';\
  su root -c 'sed -i 's/^#RHQ_AGENT_ADDITIONAL_JAVA_OPTS/RHQ_AGENT_ADDITIONAL_JAVA_OPTS/g' /opt/rhq-agent/bin/rhq-agent-env.sh';\
  su root -c '/opt/rhq-server-${RHQ_VERSION}/bin/rhqctl --agent restart';\
  /bin/bash

EXPOSE 9797

