#! /bin/bash

echo Path Bash: $(which bash)
echo IP $(ifconfig | grep broadcast | awk '{print $2}')
echo $(vcgencmd measure_temp)
echo SSH Status: $(service ssh status | grep active | awk '{print $2 $3}')
echo Hostname: $(hostname);
echo "Dai invio per fare speedtest, se non vuoi scrivi NO"
read answer
if [ $answer ]; then
    echo ok
else
     echo $(sudo speedtest-cli);
fi




# sudo apt update
# sudo apt full-upgrade
# https://pimylifeup.com/raspberry-pi-disable-wifi/
# sudo apt install rfkill
# sudo rfkill block wifi
# sudo rfkill block bluetooth
# sudo rfkill unblock wifi
# sudo apt-get install speedtest
