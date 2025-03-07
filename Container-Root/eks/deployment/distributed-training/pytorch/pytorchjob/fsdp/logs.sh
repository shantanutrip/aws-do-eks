#!/bin/bash

echo ""
echo "<<<<<< Fine Tuning Logs >>>>>>"
echo ""

kubectl logs -l app=fsdp

echo ""
echo "<<<<<< Model Processor Logs [Its fine to see 'No resources found in default namespace' if you are still running the fine tuning] >>>>>>]"
echo ""

kubectl logs -l app=model-processor