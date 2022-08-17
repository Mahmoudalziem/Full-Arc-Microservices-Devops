#!/bin/bash
# curl -LO https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl
# curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
# echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
# sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
# aws eks update-kubeconfig --name test --region us-east-2




!/bin/bash
set -ex
B64_CLUSTER_CA=${cluster_auth_base64}
API_SERVER_URL=${cluster_endpoint}
K8S_CLUSTER_DNS_IP=172.20.0.10
/etc/eks/bootstrap.sh ${cluster_name} --kubelet-extra-args '--node-labels=eks.amazonaws.com/nodegroup-image=${nodegroup-image},eks.amazonaws.com/capacityType=ON_DEMAND,eks.amazonaws.com/nodegroup=${nodegroup_name} --max-pods=${max_pods}' --b64-cluster-ca $B64_CLUSTER_CA --apiserver-endpoint $API_SERVER_URL --dns-cluster-ip $K8S_CLUSTER_DNS_IP --use-max-pods true
--//--