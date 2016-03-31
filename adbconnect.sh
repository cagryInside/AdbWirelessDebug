PORT='5555'
adb kill-server
adb tcpip $PORT
sleep 2
IP=$(adb shell ifconfig | grep 'broadcast\|Bcast' | awk -F ' ' {'print $2'} | head -n 1 | sed -e 's/addr://g')
ADDR="$IP:$PORT"
adb connect $IP:5555