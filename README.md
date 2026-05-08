# CD12352 - Infrastructure as Code Project Solution
# Udagram Project

## Spin up instructions
1. Deploy Network Stack:
aws cloudformation create-stack --stack-name udacity-network --template-body file://network.yml --capabilities CAPABILITY_NAMED_IAM --region us-east-1

2. Deploy Udagram Stack:
aws cloudformation create-stack --stack-name udacity-udagram --template-body file://udagram.yml --capabilities CAPABILITY_NAMED_IAM --region us-east-1

## Tear down instructions
1. Delete Udagram Stack first:
aws cloudformation delete-stack --stack-name udacity-udagram --region us-east-1

2. Delete Network Stack:
aws cloudformation delete-stack --stack-name udacity-network --region us-east-1

## Other considerations
Load Balancer URL: http://udacit-WebAp-uV8892VzAkws-1942814933.us-east-1.elb.amazonaws.com
App displays: "It works! Udagram, Udacity"
S3 Bucket: udacity-project-static-537136023736
