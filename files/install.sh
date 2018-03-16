#!/bin/bash
#Install script for applications
#Inkscape

#####################################
#	Add PPA and install app          	#
#							                  		#
#####################################
add-apt-repository -y ppa:inkscape.dev/stable
apt-get update -qq
apt-get install -qy inkscape
#####################################
#	Commands for driving silhouette   #
#							                  		#
#####################################
apt install python-usb
wget https://github.com/fablabnbg/inkscape-silhouette/releases/download/v1.19/inkscape-silhouette_1.19-1_all.d
sudo dpkg -i inkscape-silhouette_1.19-1_all.deb
#####################################
#	Add configs and needed stuff    	#
#								                  	#
#####################################
cp /files/startapp.sh /startapp.sh
chmod +x /startapp.sh

exit
