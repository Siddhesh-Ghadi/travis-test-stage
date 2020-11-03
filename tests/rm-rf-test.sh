#!/bin/bash
set -ex
sudo rm -rf /usr/local/share/man
docker run -t centos:7 bash -c '/usr/local/share/; ls -la /usr/local/share/; rm -rf /usr/local/share/*; ls -la /usr/local/share/'
docker run -t ppc64le/centos:8 bash -c 'rm -rf /usr/local/share/man'
docker run -t registry.access.redhat.com/ubi7 bash -c 'rm -rf /usr/local/share/man'
docker run -t registry.access.redhat.com/ubi8 bash -c 'rm -rf /usr/local/share/man'
docker run -t fedora:30 bash -c 'rm -rf /usr/local/share/man'
docker run -t ubuntu:18.04 bash -c 'ls -la /usr/local/share/; rm -rf /usr/local/share/*; ls -la /usr/local/share/'
