#cp -r * ../haojie7366/
#cd ../haojie7366
./hpush.sh
git add --all
git commit -m "$(date)"
git pull
git add --all
git commit -m "$(date)"
git push
