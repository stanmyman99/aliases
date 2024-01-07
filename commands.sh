# ---------------------------------------------------------------
# Veracrypt reference
# ---------------------------------------------------------------

# Building veracrypt
#
pushd ~
mkdir ~/Apps/veracrypt
cd ~/Apps/veracrypt
wget https://www.veracrypt.fr/code/VeraCrypt/snapshot/VeraCrypt_1.26.7.tar.gz
sudo apt install g++ libfuse-dev pkg-config yasm libwxbase3.0-dev
tar -xvf VeraCrypt-VeraCrypt_1.26.7.tar.gz
cd VeraCrypt-VeraCrypt_1.26.7/src
make NOGUI=1
sudo cp Main/veracrypt /usr/bin

# Create a new volume:
#
veracrypt -t -c

# Mount a volume:
#
veracrypt volume.hc /media/veracrypt1

# Mount a volume as read-only, using keyfiles:
#
veracrypt -m ro -k keyfile1,keyfile2 volume.hc

# Mount a volume without mounting its filesystem:
#
veracrypt --filesystem=none volume.hc

# Mount a volume prompting only for its password:
#
veracrypt -t -k "" --pim=0 --protect-hidden=no volume.hc /media/veracrypt1

# Dismount a volume:
#
veracrypt -d volume.hc

# Dismount all mounted volumes:
#
veracrypt -d

# Veracrypt container creation
#
veracrypt -t -c ~/Documents/Encrypted.vc

# Veracrypt mounting
#
veracrypt ~/Documents/Encrypted.vc /media/veracrypt1

# Veracrypt soft linking
#
pushd ~/Documents
ln -s /media/veracrypt1 Encrypted
popd

# ---------------------------------------------------------------
# Android emulator reference
# ---------------------------------------------------------------
pushd ~/Android/Sdk/emulator
./emulator -list-avds

# Boot the device, save changes
#
./emulator -avd Pixel_6_Pro_API_33

# Boot the devide from off state and save changes
# 
./emulator -avd Pixel_6_Pro_API_33 -no-snapshot-load

# Boot the device but don't save changes
#
./emulator -avd Pixel_6_Pro_API_33 -no-snapshot-save

# Reset the device to factory settings
#
./emulator -avd Pixel_6_Pro_API_33 -wipe-data

# ---------------------------------------------------------------
# Kali linux reference
# ---------------------------------------------------------------

# Build the driver for the TP-Link AC600
#
sudo apt install git dkms
git clone https://github.com/aircrack-ng/rtl8812au.git
cd rtl8812au
sudo make dkms_install
#The following commands are only needed if there was already a driver present and you're updating
# sudo mv /var/lib/8812au /var/lib/8812au-orig
# sudo make dkms_install

# Show available wifi
#
nmcli dev wifi

