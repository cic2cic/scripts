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
# sudo apt-get install gnupg1 apt-transport-https dirmngr
# export INSTALL_KEY=379CE192D401AB61
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
# echo "deb https://ookla.bintray.com/debian generic main" | sudo tee  /etc/apt/sources.list.d/speedtest.list
# sudo apt-get update
# Other non-official binaries will conflict with Speedtest CLI
# sudo apt-get install speedtest
# ! Example how to remove using apt-get !
# ! sudo apt-get remove speedtest-cli !
