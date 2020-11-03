#!/bin/bash
set -ex
sudo apt update -y && sudo apt install -y emacs
docker run -t ubuntu:18.04 bash -c 'apt update -y && apt install -y git'
docker run -t centos:7 bash  -c 'yum update -y && yum install -y git'
