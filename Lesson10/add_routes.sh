#Adding routes for subnet 212.100.54.0/26

sudo ip route add 212.100.54.64/26 dev eth0
sudo ip route add 212.100.54.128/26 dev eth0
sudo ip route add 212.100.54.192/26 dev eth0