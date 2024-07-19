if [ -f "yuyin_pid.txt" ]; then 
pid=$(cat yuyin_pid.txt)
pkill -P $pid 
rm yuyin_pid.txt 
else
echo "process ID file not found." 
fi