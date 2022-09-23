
#!/usr/bin/bash

sudo apt update -y
sudo apt install apache2 -y
cd /opt
sudo touch index.html
sudo chmod 777 index.html
sudo echo "<html>" > index.html
sudo echo "<head>" >> index.html
sudo echo "<title>website1</title>" >> index.html
sudo echo "</head>" >> index.html
sudo echo "<body>" >> index.html
sudo echo "<h1>web1</h1>" >> index.html
sudo echo "</body>" >> index.html
sudo echo "</html>" >> index.html
sudo systemctl restart apache2

sudo chmod 755 /var/www
cd /var/www/html
sudo mv index.html index1.html ;
sudo mv /opt/index.html index.html
exit 0
