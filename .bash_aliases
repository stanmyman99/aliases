alias avupdate='sudo systemctl stop clamav-freshclam & sudo freshclam & sudo systemctl start clamav-freshclam'
alias avscan='clamscan -r -i /'
alias ipa="ifconfig | grep inet"
alias mountvc='veracrypt ~/Documents/Encrypted.vc /media/veracrypt1'
alias reference='cat ~/Code/aliases/reference.sh'
alias pixel='~/Android/Sdk/emulator/emulator -avd OSINT -gpu host'
alias pixelslow='~/Android/Sdk/emulator/emulator -avd OSINT'
alias pubip='curl checkip.amazonaws.com'
