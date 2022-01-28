curl -s https://raw.githubusercontent.com/cryptongithub/init/main/logo.sh | bash && sleep 1
echo '\n\e[42mMinima Node Update\e[0m\n' && sleep 2
sudo rm /etc/systemd/system/minima_9001.service
wget -q -O /etc/systemd/system"/minima_9001.service" "https://raw.githubusercontent.com/cryptongithub/Crypton_Minima/main/minima_9001.service"
sudo systemctl enable minima_9001 
sudo systemctl daemon-reload 
sudo systemctl restart minima_9001
apt install jq -y && apt install curl -y
echo '\n\e[42mWait for 30 seconds\e[0m\n' && sleep 2
sleep 30
curl 127.0.0.1:9002/incentivecash | jq
