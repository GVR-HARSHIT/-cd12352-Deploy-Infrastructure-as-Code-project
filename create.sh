#!/bin/bash
# Deploy Network Stack
aws cloudformation create-stack \
  --stack-name udacity-network \
  --template-body file://network.yml \
  --parameters file://network-parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region us-east-1

echo "Waiting for network stack..."
aws cloudformation wait stack-create-complete --stack-name udacity-network --region us-east-1

# Deploy Udagram Stack
aws cloudformation create-stack \
  --stack-name udacity-udagram \
  --template-body file://udagram.yml \
  --parameters file://udagram-parameters.json \
  --capabilities CAPABILITY_NAMED_IAM \
  --region us-east-1

echo "Waiting for udagram stack..."
aws cloudformation wait stack-create-complete --stack-name udacity-udagram --region us-east-1
echo "Deployment complete!"
