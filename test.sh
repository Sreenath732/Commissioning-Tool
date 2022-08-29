sudo apt-get install gnome-terminal
cd project
sudo chmod 777 *
gnome-terminal -- ./commissioning-server 2011

#status=$(./clientNew 127.0.0.1 5433 "0000000020[{\"username\": \"rushikesh\",\"passcode\":\"finecho@178\",\"authkey\":\"abcd\",\"endpoint\":\"showUTCtimeAndLocaltime\"}]")
status=$(./clientNew 127.0.0.1 2011 0000000020"[{\"username\": \"rushikesh\",\"passcode\":\"finecho@178\",\"authkey\":\"abcd\",\"endpoint\":\"showUTCtimeAndLocaltime\"}]")
#echo $status
echo $status 
