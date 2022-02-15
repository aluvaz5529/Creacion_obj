cp /var/lib/samba/private/krb5.conf /etc
systemctl stop nmbd winbind system-resolved
systemctl disable nmbd winbind system-resolved
systemctl stop smbd
systemctl disable smbd 
systemctl unmask samba-ad-dc
rm /etc/resolv.conf
nano /etc/resolv.conf
#vas y añades a ese archivo 
domain upv.es
nameserver 127.0.0.1
