#!/bin/bash

################# VPC ################################

VPCID=vpc-0abe4383c4fc190a9
AnsibleSecurityGroup=sg-0de4340f952b28256

############ SGNameS ###############################

WebServicesSG=venkatAzSand0WebServicesSG
AntivirusScanSG=venkatAzSand0AntivirusScanSG
AzAppServerSG=venkatAzSand0AppServerSG
ServiceBusSG=venkatAzSand0ServiceBusSG
DzAppServerSG=venkatDzSand0AppServerSG
DataBase1SG=venkatDzSand0DataBase1SG
DataBase2SG=venkatDzSand0DataBase2SG
ETLServerSG=venkatDZSand0ETLServerSG
JenkinsServerSG=venkatMzSand0JenkinsServerSG


############ SGNameS ###############################


SGName=$WebServicesSG

echo "1.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup


SGName=$AntivirusScanSG

echo "2.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup

SGName=$AzAppServerSG

echo "3.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup


SGName=$ServiceBusSG

echo "4.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup

SGName=$DzAppServerSG

echo "5.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup


SGName=$DataBase1SG

echo "6.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup

SGName=$DataBase2SG

echo "7.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup


SGName=$ETLServerSG

echo "8.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup

SGName=$JenkinsServerSG

echo "9.$SGName"

aws cloudformation create-stack --stack-name $SGName --template-body file://EC2SG.yml --parameters ParameterKey=VPC,ParameterValue=$VPCID ParameterKey=SGName,ParameterValue=$SGName ParameterKey=AnsibleSecurityGroup,ParameterValue=$AnsibleSecurityGroup

