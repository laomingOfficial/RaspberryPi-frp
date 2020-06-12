latestVersion=0.33.0
mkdir -p /tmp/frp
wget -O /tmp/frp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${latestVersion}/frp_${latestVersion}_linux_amd64.tar.gz
tar -C /tmp/frp -zxvf frp.tar.gz
sudo cp /tmp/frp/frp_${latestVersion}_linux_amd64/frps /usr/bin
chmod +x /usr/bin/frps
sudo mkdir -p /etc/frp
sudo wget -O /etc/frp/frps.ini https://raw.githubusercontent.com/laomingOfficial/RaspberryPi-frp/master/frps.ini
sudo wget -O /etc/systemd/system/frps.service https://raw.githubusercontent.com/laomingOfficial/RaspberryPi-frp/master/frps.service
rm -r /tmp/frp