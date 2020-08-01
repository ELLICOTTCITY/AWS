#aws ec2 describe-security-groups   --output text |egrep 'vpc-0abe4383c4fc190a9'
aws ec2 describe-security-groups   --output text |egrep 'vpc-0abe4383c4fc190a9'  | awk '{ print $2, $3 }' |grep sg |sort
