#!/bin/sh

GUID=72c4

for i in `seq 1 25`;
do
cat << EOF > ./dyn1-pv-create.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv$i 
spec:
  capacity:
    storage: 5Gi 
  accessModes:
    - ReadWriteOnce 
  persistentVolumeReclaimPolicy: Recycle
  nfs: 
    path: /exports/pv$i
    server: support1.$GUID.internal
    readOnly: false
EOF
oc create -f ./dyn1-pv-create.yaml
done 

for i in `seq 26 50`;
do
cat << EOF > ./dyn2-pv-create.yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv$i 
spec:
  capacity:
    storage: 10Gi 
  accessModes:
    - ReadWriteMany 
  persistentVolumeReclaimPolicy: Retain
  nfs: 
    path: /exports/pv$i
    server: support1.$GUID.internal
    readOnly: false
EOF
oc create -f ./dyn2-pv-create.yaml
done 
