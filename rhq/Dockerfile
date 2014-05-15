#Dockerfile for RHQ  

FROM gkhachik/rhq-fedora.20:4.11.0

MAINTAINER Jeremie Lagarde <jer@printstacktrace.org>

# Add files
RUN echo "su root -c '#!/bin/bash"  > /launch.sh 
RUN su root -c 'chmod +x /launch.sh';


ENTRYPOINT \
  su -l postgres -c " pg_ctl -l server.log -w stop; pg_ctl -l server.log -w start; ";\
  su root -c '/opt/rhq-server-${RHQ_VERSION}/bin/rhqctl install --agent-preference="127.0.0.1" --start --agent --server --storage';\
  su root -c '/launch.sh';\
  /bin/bash


