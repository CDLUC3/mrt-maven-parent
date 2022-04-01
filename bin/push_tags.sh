#!/usr/bin/env bash

START_DIR=$(pwd)
SCRIPT_HOME=$(dirname $0)
REPOS_DIR="$SCRIPT_HOME/.."
SUBMODULES="
cdl-zk-queue
mrt-audit
mrt-cloud
mrt-core2
mrt-ingest
mrt-inventory
mrt-oai
mrt-replic
mrt-store
mrt-sword
mrt-zoo
"

cd $REPOS_DIR
for dir in $SUBMODULES; do
  echo $dir
  git -C $dir push origin --tags
  echo
done

