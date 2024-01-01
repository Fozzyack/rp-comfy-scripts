port='YOUR RUNPOD PORT'
ip='YOUR RUNPOD IP'
ssh_id='YOUR SSH ID e.g id_ed123456'
scp -P $port -i ~/.ssh/$ssh_id autodownload.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/$ssh_id customNodeGit.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/$ssh_id optionalDelete.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/$ssh_id cleanup.sh root@$ip:/workspace
ssh root@$ip -p $port -i ~/.ssh/$ssh_id