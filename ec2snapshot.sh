#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@54.151.254.210 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED -n MyCluster01; ~/update_snapshot.sh data 2 MyCluster01"
