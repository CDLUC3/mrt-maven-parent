#!/usr/bin/env bash

TAG=0.1
MSG='explicitly declare used/undeclared deps'

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
  git --no-pager -C $dir tag -f -am "$MSG" "maven-refactor-${TAG}"
  git --no-pager -C $dir tag -ln | grep maven-refactor
  echo
done

