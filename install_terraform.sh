#!/bin/bash

# Install Terraform
TERRAFORM_VERSION="1.4.6"
TERRAFORM_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Install unzip (if not already installed)
sudo apt-get update
sudo apt-get install -y unzip

# Download and extract Terraform
curl -LO $TERRAFORM_URL
unzip "terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

# Move Terraform binary to a directory in the system's PATH
sudo mv terraform /usr/local/bin/

# Verify the installation
terraform version

