aws ec2 describe-volumes --query "Volumes[*].[VolumeId, Attachments[0].InstanceId, AvailabilityZone, Size, Tags[?Key=='Name'].Value|[0]]" --output table
