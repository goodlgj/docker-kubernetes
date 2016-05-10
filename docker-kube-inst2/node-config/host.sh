#!/bin/bash

sed -i "s/HOST/$HOSTNAME/g" /etc/kubernetes/kubelet
