#!/bin/sh

launch.sh

# Common curl switches
echo '-s' >> ~/.curlrc


apt update > /dev/null 2>&1
apt install tree --yes -qq

source <(kubectl completion bash)

{ clear && echo 'Kubernetes is ready.'; } 2> /dev/null