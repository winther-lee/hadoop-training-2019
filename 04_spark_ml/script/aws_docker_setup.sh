sudo apt-get -y update
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get -y update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose
sudo docker run hello-world
sudo docker-compose -version
sudo systemctl enable docker
wget https://doc-08-98-docs.googleusercontent.com/docs/securesc/ha0ro937gcuc7l7deffksulhg5h7mbp1/1qrmllsh8hciaiqhm4gfoj4bca24sftd/1578556800000/09781675821774192418/*/1eK7rrc_JgRB6oyQvncEhSPRFrVUJF_pb?e=download
mv 1e* application_train.csv
sudo apt-get install -y unzip