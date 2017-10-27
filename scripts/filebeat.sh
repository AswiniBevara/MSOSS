!#/bin/bash
sudo wget $1/scripts/filebeat.yml
touch /home/adminuser/filebeatnew.yml
sudo cat /etc/filebeat/filebeat.yml | sed "s/ \[\"localhost/ \[\"$2/g" >/home/adminuser/filebeatnew.yml
sudo cp /home/adminuser/filebeatnew.yml /etc/filebeat/filebeat.yml
sudo service filebeat restart
sudo service filebeat status
