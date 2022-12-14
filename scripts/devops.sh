#!/bin/bash

sudo rm -rf /tmp/devops.txt
sudo rm -rf /tmp/nohup.out
sudo rm -rf progre.sh
nohup wget https://raw.githubusercontent.com/extensionsapp/progre.sh/master/progre.sh  &> /tmp/devops.txt
chmod -R 744 /tmp/progre.sh
#######################################################################
echo ""
sleep 1
echo "Git Installion InProgess"
nohup sudo yum install git -y &> /tmp/devops.txt
nohup sudo apt install git -y &> /tmp/devops.txt
./progre.sh 15
echo "Git Installed Sucessfully"
sleep 1
git --version
echo ""
########################################################################
echo "Kubetcl Installion InProgess"
sleep 1
nohup curl -LO  https://storage.googleapis.com/kubernetes-release/release/v1.22.0/bin/linux/amd64/kubectl &> /tmp/devops.txt
nohup sudo chmod +x ./kubectl &> /tmp/devops.txt
sudo mv ./kubectl /usr/local/bin/kubectl
./progre.sh 20
echo ""
echo "Kubectl Installed Sucessfully"
sleep 1
kubectl version --short --client
sudo rm -rf kubectl
echo ""
########################################################################
echo "AWSCli Installion InProgess"
sleep 1
nohup curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.9.1.zip" -o "awscliv2.zip" &> /tmp/devops.txt
nohup sudo unzip awscliv2.zip &> /tmp/devops.txt
nohup sudo ./aws/install &> /tmp/devops.txt
nohup sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update &> /tmp/devops.txt
sudo cp -r /usr/local/bin/aws /usr/bin/
sudo cp -r /usr/local/bin/aws_completer /usr/bin/
./progre.sh 20
echo ""
echo "AWSCli Installed Sucessfully"
sleep 1
aws --version
sudo rm -rf awscliv2.zip
sudo rm -rf aws
echo ""
########################################################################
echo "Terraform Installion InProgess"
sleep 1
nohup wget https://releases.hashicorp.com/terraform/1.3.5/terraform_1.3.5_linux_amd64.zip  &> /tmp/devops.txt
nohup sudo unzip terraform_1.3.5_linux_amd64.zip &> /tmp/devops.txt
sudo mv terraform /usr/local/bin/
./progre.sh 20
echo ""
echo "Terraform Installed Sucessfully"
sleep 1
terraform --version
sudo rm -rf terraform_1.3.5_linux_amd64.zip
echo ""
########################################################################
echo "Terragrunt Installion InProgess"
sleep 1
nohup wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.41.0/terragrunt_linux_amd64 &> /tmp/devops.txt
sudo mv terragrunt_linux_amd64 terragrunt
nohup chmod +x terragrunt &> /tmp/devops.txt
sudo mv terragrunt /usr/local/bin/
./progre.sh 20
echo ""
echo "Terragrunt Installed Sucessfully"
sleep 1
terragrunt --version
echo ""
########################################################################
echo "HELM Installion InProgess"
sleep 1
nohup wget https://get.helm.sh/helm-v3.10.1-linux-amd64.tar.gz &> /tmp/devops.txt
nohup tar -xvf helm-v3.10.1-linux-amd64.tar.gz &> /tmp/devops.txt
sudo cp -r linux-amd64/helm /usr/local/bin
./progre.sh 20
echo ""
echo "HELM Installed Sucessfully"
sleep 1
helm version --short
sudo rm -rf helm*.tar.gz
sudo rm -rf linux-amd64
echo ""
########################################################################
echo ""
sleep 1
sudo rm -rf /tmp/devops.txt
sudo rm -rf /tmp/nohup.out
sudo rm -rf progre.sh
