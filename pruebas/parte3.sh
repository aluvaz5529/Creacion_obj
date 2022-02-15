cp /var/lib/samba/private/krb5.conf /etc
systemctl stop nmbd winbind system-resolved
systemctl disable nmbd winbind system-resolved
systemctl stop smbd
systemctl disable smbd 
systemctl unmask samba-ad-dc
rm /etc/resolv.conf
nano /etc/resolv.conf
