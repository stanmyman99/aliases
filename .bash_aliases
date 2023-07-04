alias avupdate='sudo systemctl stop clamav-freshclam & sudo freshclam & sudo systemctl start clamav-freshclam'
alias avscan='clamscan -r -i /'
alias localip="ip -o -4 route get 1 | awk '{print $7}'"
alias mountvc='veracrypt ~/Documents/Encrypted.vc /media/veracrypt1'


