#!/usr/bin/env bash

set -eu
make push-tag
kubectl get pod |grep errorproxy|awk '{print $1}'| xargs kubectl delete pod
