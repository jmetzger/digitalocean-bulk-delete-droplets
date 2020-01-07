#!/bn/bash 

#### needs to be executed before using bash-script 

# Installs snap and doctl 
sudo yum install -y epel-release 
sudo yum install snapd 
systemctl start snapd 
systemctl enable snapd 
sudo snap install doctl 

# if doctl cannot be found after that ->
# logout and login again 


