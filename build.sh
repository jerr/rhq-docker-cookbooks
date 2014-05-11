#!/bin/bash -ex

cd rhq
docker build -t jerr/rhq .
cd ../rhq-agent-debug
docker build -t jerr/rhq-agent-debug .
