#  Download the aliases and command references
# 
pushd .
mkdir ~/Code
cd ~/Code
git clone https://github.com/stanmyman99/aliases
popd

# Create the provisioning directory and download Veracrypt
#
pushd .
mkdir ~/Apps/veracrypt
cd ~/Apps/veracrypt
wget https://www.veracrypt.fr/code/VeraCrypt/snapshot/VeraCrypt_1.26.7.tar.gz



