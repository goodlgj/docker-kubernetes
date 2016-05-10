#!/bin/bash

CLUSTER=192.168.56.0
MASTERNAME=kube-master
FLANNEL=10.20.0.0
KUBEHOME=/root/docker-kubernetes/docker-kube-inst2

sed -i "s/CLUSTERRANGE/$CLUSTER/g" /$KUBEHOME/master-config/apiserver

sleep 2

sed -i "s/MASTERSERVER/$MASTERNAME/g" /$KUBEHOME/master-config/kube-config

sleep 2

sed -i "s/MASTERSERVER/$MASTERNAME/g" /$KUBEHOME/node-config/kube-node-config

sleep 2

sed -i "s/MASTERSERVER/$MASTERNAME/g" /$KUBEHOME/node-config/kubelet

sleep 2

sed -i "s/MASTERSERVER/$MASTERNAME/g" /$KUBEHOME/node-config/proxy

sleep 2

sed -i "s/FLANNELRANGE/$FLANNEL/g" /$KUBEHOME/flannel-config/flannel-config.json

sleep 2

sed -i "s/MASTERSERVER/$MASTERNAME/g" /$KUBEHOME/flannel-config/flanneld

