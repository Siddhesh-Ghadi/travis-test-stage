#!/bin/bash
set -ex
ifconfig
cat /etc/docker/daemon.json
curl https://public.dhe.ibm.com/ibmdl/export/pub/software/server/ibm-ai/conda/linux-ppc64le/current_repodata.json > log.txt
curl http://storage.googleapis.com/kubernetes-release/release/v1.14.2/bin/linux/ppc64le/kubectl > log1.txt
docker run -t centos:7 bash -c 'curl https://public.dhe.ibm.com/ibmdl/export/pub/software/server/ibm-ai/conda/linux-ppc64le/current_repodata.json > log.txt; curl http://storage.googleapis.com/kubernetes-release/release/v1.14.2/bin/linux/ppc64le/kubectl > log1.txt'
