#!/bin/bash
# 1. Update system
sudo apt-get update && sudo apt-get upgrade -y

# 2. Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# 3. Setup permissions for data folder
mkdir -p data

# 4. Success message
echo "-------------------------------------------------------"
echo "Poste.io environment is ready."
echo "1. Ensure port 25 is open in AWS Lightsail Firewall."
echo "2. Run: sudo docker compose up -d"
echo "3. Access https://gershell.dev to complete the wizard."
echo "-------------------------------------------------------"
