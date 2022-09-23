#!/usr/bin/bash

sudo apt update -y
sudo apt install apache2 -y
cd /var/www/html
sudo mv index.html index1.html
sudo touch index.html
sudo echo "
<html>
<head>
<title>website1</title>
</head>
<body>
<h1>web1</h1>
</body>
</html> "
> index.html
sudo systemctl restart apache2
exit 0
