
#download a file ($1) from controller 1
SCRIPT=$1
PORT=2221

#downloads
scp -P $PORT ubuntu@127.0.0.1:~/$SCRIPT down/.
