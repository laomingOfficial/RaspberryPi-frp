# RaspberryPi-frp 树莓派frp内网穿透架设
这是树莓派架设frp内网穿透教程  
frp架设有分成server(服务器) 和 client (客户端)  

## 架设步骤
首先，先在server(服务器) 设置frp  
1. 运行以下4句指令  
```
wget https://raw.githubusercontent.com/laomingOfficial/RaspberryPi-frp/master/SetupServer.sh  
chmod +x SetupServer.sh  
./SetupServer.sh  
sudo nano /etc/frp/frps.ini
```
2. 更改你想要的端号和token  
3. 运行以下3句指令，将frp设置为服务 和 开机自动开启服务  
```
systemctl daemon-reload # 重载所有修改过的配置文件  
systemctl start frps # 启动服务  
systemctl enable frps #将服务设置为开机启动  
```

接下来，进入树莓派terminal设置frp  
1. 运行以下4句指令  
```
wget https://raw.githubusercontent.com/laomingOfficial/RaspberryPi-frp/master/SetupClient.sh  
chmod +x SetupClient.sh  
./SetupClient.sh  
sudo nano /etc/frp/frpc.ini  
```
2. 更改对应的设定，例如服务器IP，服务器端口，远程端口等  
3. 运行以下3句指令，将frp设置为服务 和 开机自动开启服务  
```
systemctl daemon-reload # 重载所有修改过的配置文件  
systemctl start frpc # 启动服务  
systemctl enable frpc #将服务设置为开机启动  
```