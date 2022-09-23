#!/usr/bin/bash

cd $home
sudo mkdir -p {Thierry/{Travail/{Client1,Client2,Client3},Photo},Albert/{Compta/{2011,2012,2013,2014},Images}}

cd /home/Thierry/Travail/Client1
sudo touch CL1.txt

cd /home/Thierry/Travail/Client2
sudo touch CL2.txt

cd /home/Thierry/Travail/Client3
sudo touch CL3.txt


cd /home/Albert/Compta/2011
sudo touch 2011

cd /home/Albert/Compta/2012
sudo touch 2012

cd /home/Albert/Compta/2013
sudo touch 2013

cd /home/Albert/Compta/2014
sudo touch 2014
