#!/bin/bash

source .env

echo ""
echo "Generating etcd manifest ..."

cat etcd.yaml-template | envsubst > etcd.yaml

#cat etcd.yaml

echo ""
echo "Generating PyTorchJob manifest ..."

cat fsdp.yaml-template | envsubst > fsdp.yaml

#cat fsdp.yaml

echo ""
echo "Generating Model Processor manifest ..."

cat model-processor.yaml-template | envsubst > model-processor.yaml

echo "Done."
echo ""

