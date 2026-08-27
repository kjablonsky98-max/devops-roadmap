#/bin/bash 

hostname=$(hostname)
user=$(whoami)
ip=$(hostname -I)

echo "=== SERVER INFO ==="
echo "Hostname: $hostname"
echo "User: $user"
echo "IP: $ip"

