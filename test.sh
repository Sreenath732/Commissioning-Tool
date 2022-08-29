sudo apt-get install gnome-terminal
gnome-terminal -- ./commissioning-server 2020

#status=$(./clientNew 127.0.0.1 5433 "0000000020[{\"username\": \"rushikesh\",\"passcode\":\"finecho@178\",\"authkey\":\"abcd\",\"endpoint\":\"showUTCtimeAndLocaltime\"}]")
status=$(./clientNew 127.0.0.1 2020 0000000020"[{/"username/": /"rushikesh/",/"passcode/":/"finecho@178/",/"authkey/":/"abcd/",/"endpoint/":/"showUTCtimeAndLocaltime/"}]")
#echo $status
echo $status 
