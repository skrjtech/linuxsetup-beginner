#!/bin/bash
sudo apt install -y curl                \\
                    gnupg-agent         \\
                    ca-certificates     \\
                    apt-transport-https \\
                    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo usermod -aG docker ${USER}
su - ${USER}