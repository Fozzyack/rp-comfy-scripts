source .env

scp -P $PORT -i ~/.ssh/$SSH_ID autodownload.sh root@$IP:/workspace
scp -P $PORT -i ~/.ssh/$SSH_ID optionalDelete.sh root@$IP:/workspace
scp -P $PORT -i ~/.ssh/$SSH_ID cleanup.sh root@$IP:/workspace
scp -P $PORT -i ~/.ssh/$SSH_ID moremodels.sh root@$IP:/workspace
ssh root@$IP -p $PORT -i ~/.ssh/$SSH_ID