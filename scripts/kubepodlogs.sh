#!/bin/bash
mkdir -p /var/podlogs
cd /var/podlogs
kubectl get --no-headers=true pods -o name | awk -F "/" '{print $2}' > pods
for podname in `cat pods`; do kubectl logs -f $podname > /var/podlogs/$podname.log & done &
