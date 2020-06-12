latestVersion=0.33.0
mkdir -p /tmp/frp
wget -O /tmp/frp/frp.tar.gz https://github.com/fatedier/frp/releases/download/v${latestVersion}/frp_${latestVersion}_linux_arm.tar.gz
tar -C /tmp/frp -zxvf /tmp/frp/frp.tar.gz
sudo cp /tmp/frp/frp_${latestVersion}_linux_arm/frpc /usr/bin
chmod +x /usr/bin/frpc
sudo mkdir -p /etc/frp
sudo wget -O /etc/frp/frpc.ini https://raw.githubusercontent.com/laomingOfficial/RaspberryPi-frp/master/frpc.ini
sudo wget -O /etc/systemd/system/frpc.service https://raw.githubusercontent.com/laomingOfficial/RaspberryPi-frp/master/frpc.service
rm -r /tmp/frp