if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Star-Bots-Tamil/LazyPrincess.git /star-movies-tamil-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /star-movies-tamil-bot
fi
cd /star-movies-tamil-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
