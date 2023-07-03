cd /home/me/blog
source path.sh
npm i
hexo g
cd /home/me 
cp -r blog/public/* haojie7366.github.io/
cd haojie7366.github.io
git add --all
git commit -m "$(date)"
git push
