aws ec2 describe-vpcs --filter "Name=tag:aws:cloudformation:stack-name,Values=opp-sandbox-vpc" --output table

aws ec2 describe-vpcs  --output table
