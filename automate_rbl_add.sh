#Install required packages
yum install -y python-dns python-netifaces python-IPy

#Copy the plugin to /usr/lib/check_mk_agent/plugins and make it executable
wget https://raw.githubusercontent.com/viorelfoamete/check_mk-rbl/master/agents/plugins/rbl.py -P /usr/lib/check_mk_agent/plugins
chmod +x /usr/lib/check_mk_agent/plugins/rbl.py

#Copy the list of rbl servers to /etc/check_mk
wget https://raw.githubusercontent.com/viorelfoamete/check_mk-rbl/master/check_rbl.ini -P /etc/check_mk

#Restart xinetd service
service xinetd restart
