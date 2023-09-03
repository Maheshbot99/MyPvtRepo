if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Maheshbot99/MyPvtRepo.git /MyPvtRepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MyPvtRepo
fi
cd /MyPvtRepo
pip3 install -U -r requirements.txt
echo "Starting MyPvtRepo...."
python3 bot.py
