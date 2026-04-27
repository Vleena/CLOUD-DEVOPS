#!/bin/bash

################################

# Description:- list EC2, IAM, Lambda and S3 resources used in the AWS account.
# Author:- Vleena
# Version:- V1

##################################

echo "IAM users list: " 
aws iam list-users

echo "S3 bucket list: "
aws s3 ls

echo "list of lambda function: "
aws lambda list-functions


echo "list of EC2 instances: "
aws ec2 describe-instances |jq '.Reservations[].Instances[] | {InstanceId,ImageId,State:.State.Name}'



