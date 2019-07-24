#!/bin/bash

cd ~/Arca/Code/Projects/gdi/containership/

docker-compose up -d hspweb archivecore archiveweb archivecore_taskrunner

function stop_containers() {
  docker-compose rm -s -f -v
}
