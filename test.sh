gnome-terminal -- ./commissioning-server 2020

#status=$(./clientNew 127.0.0.1 5433 "0000000020[{\"username\": \"rushikesh\",\"passcode\":\"finecho@178\",\"authkey\":\"abcd\",\"endpoint\":\"showUTCtimeAndLocaltime\"}]")
status=$(./clientNew 127.0.0.1 2020 0000000020"[{\"username\": \"rushikesh\",\"passcode\":\"finecho@178\",\"authkey\":\"abcd\",\"endpoint\":\"PlcDataloginStatus\",\"UTCTime\":\"2022-06-27 06:28:40\"}]")
#echo $status
echo $status > result.json
read contains < <(jq .field[0].result result.json)
#echo $contains

if [ "$contains" == "\"success\"" ]; then
  echo "Data logging as expected"
else 
	echo "Data not logging as expected"
fi
