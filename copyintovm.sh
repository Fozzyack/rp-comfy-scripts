port='35008'
ip='38.147.83.14'
scp -P $port -i ~/.ssh/id_ed25519 autodownload.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/id_ed25519 customNodeGit.sh root@$ip:/workspace
scp -P $port -i ~/.ssh/id_ed25519 optionalDelete.sh root@$ip:/workspace
ssh root@38.147.83.14 -p 35008 -i ~/.ssh/id_ed25519