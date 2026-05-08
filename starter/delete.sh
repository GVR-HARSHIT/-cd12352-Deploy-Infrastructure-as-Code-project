#!/bin/bash
# Delete Udagram Stack first
aws cloudformation delete-stack --stack-name udacity-udagram --region us-east-1
echo "Waiting for udagram stack deletion..."
aws cloudformation wait stack-delete-complete --stack-name udacity-udagram --region us-east-1

# Delete Network Stack
aws cloudformation delete-stack --stack-name udacity-network --region us-east-1
echo "Waiting for network stack deletion..."
aws cloudformation wait stack-delete-complete --stack-name udacity-network --region us-east-1
echo "All stacks deleted!"
