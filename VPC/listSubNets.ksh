aws ec2 describe-subnets --filter "Name=tag:aws:cloudformation:stack-name,Values=opp-sandbox-vpc" --output table  |egrep "SubnetId|Name"
echo "aws ec2 describe-subnets  --subnet-ids xxxxx --output table"
