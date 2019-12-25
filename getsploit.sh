curl --insecure -i $1 | grep -i "server" | awk -F ":" '{print $2}' > siteserver.txt
echo "searching results for $(cat siteserver.txt)"
grep -ri $(cat siteserver.txt) /usr/share/exploitdb
echo "searched results for $(cat siteserver.txt)"
rm siteserver.txt
