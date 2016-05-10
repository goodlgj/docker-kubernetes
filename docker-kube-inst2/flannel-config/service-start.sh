#!/bin/bash

etcdctl set coreos.com/network/config < /root/flannel-config.json

sleep 10

for SERVICES in flanneld; do
    systemctl restart $SERVICES
    systemctl enable $SERVICES
    systemctl status $SERVICES
    done
