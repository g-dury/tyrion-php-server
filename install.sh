#!/bin/sh
 
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
mkdir ${HOME}/.kube
sudo mv kube-config ${HOME}/.kube/config

kubectl config set clusters.kubernetes.terrainengine.net.certificate-authority-data "$KUBE_CLUSTER_CERTIFICATE"
kubectl config set users.kubernetes.terrainengine.net.client-certificate-data "$KUBE_CLIENT_CERTIFICATE"
kubectl config set users.kubernetes.terrainengine.net.client-key-data "$KUBE_CLIENT_KEY"
kubectl config set users.kubernetes.terrainengine.net.password "$KUBE_PASSWD"
kubectl config set users.kubernetes.terrainengine.net-basic-auth.password "$KUBE_PASSWD"

kubectl cluster-info
