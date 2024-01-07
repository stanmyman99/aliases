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

# ---------------------------------------------------------------
# Android emulator commands
#  See the android-emulator-options.sh script for these in a menu
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



