#!/bin/bash

oc new-app https://github.com/samueltauil/nexus

oc expose svc nexus
sleep 40
url=$(oc get routes | egrep 'nexus' | awk '{print $2}')
export NEXUS_BASE_URL=$url
sleep 260
./addjbossrepos.sh
