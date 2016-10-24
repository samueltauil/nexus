#!/usr/bin/env bash

if [ -z NEXUS_BASE_URL ]
then
   export NEXUS_BASE_URL="http://localhost:8081"
fi

./nexusscript-create.sh jboss-public-repo.json
./nexusscript-create.sh redhat-techpreview-all-repo.json
./nexusscript-create.sh redhat-ga-repo.json
./nexusscript-create.sh redhat-group-repo.json

./nexusscript-run.sh jboss-public-repo
./nexusscript-run.sh redhat-techpreview-all-repo
./nexusscript-run.sh redhat-ga-repo
./nexusscript-run.sh redhat-group-repo
