port='YOUR RUNPOD PORT'
ip='YOUR RUNPOD IP'
scp -P $port -i ~/.ssh/------- autodownload.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/------- customNodeGit.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/------- optionalDelete.sh root@$ip:/workspace
ssh root@38.147.83.14 -p 35008 -i ~/.ssh/-------