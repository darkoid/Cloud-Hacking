#!/bin/bash

aws configure
# Now you need to enter some initial information.
aws sts get-access-key-info --access-key-id AKIAQI52OJVCPZXFYAOI
aws sts get-caller-identity
aws ec2 describe-instances --output text --region us-east-1 | grep TAGS

input="regions.txt"
while IFS= read -r line
do
  echo "$line"
  aws secretsmanager get-secret-value --secret-id HR-Password --region "$line" | grep "SecretString"
done < "$input"
