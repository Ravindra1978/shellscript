#!/bin/bash
NAMES=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "cart" "user" "shipping" "payments" "dispatch" "web")
INSTANCE_TYPE=""
IMAGE_ID=ami-03265a0778a880afb
SECURITY_GROUP_ID=sg-02aff670556d3d4d0
for i in ${NAMES[@]}
do
 if [[ $i == "mongodb" || $i == "mysql" ]]
 then
    INSTANCE_TYPE="t3.medium"
else
    INSTANCE_TYPE="t2.micro"
fi
    echo "creating $i instance"
    #aws ec2 run-instances --image-id $IMAGE_ID --instance-type $INSTANCE_TYPE  --security-group-ids $SECURITY_GROUP_ID --query 'Instances[0].PrivateIpAddress'
    #--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=$i}]'
    aws ec2 run-instances --image-id $IMAGE_ID --instance-type $INSTANCE_TYPE  --security-group-ids $SECURITY_GROUP_ID --query 'Instances[0].PrivateIpAddress' --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value="$i"}]'
done
  