sudo cp /home/core/share/docker-local.service /etc/systemd/system/
sudo systemctl enable docker-local; sudo systemctl start docker-local
sudo cp /home/core/share/docker-tcp.socket /etc/systemd/system/
systemctl enable docker-tcp.socket
systemctl stop docker
systemctl start docker-tcp.socket
systemctl start docker
