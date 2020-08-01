aws ec2 describe-instances  --query "Reservations[].Instances[].[PrivateIpAddress, Tags[?Key=='Name'].Value|[0], InstanceType, InstanceId, State.Name]" --output table  |grep -v terminated
