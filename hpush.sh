source path.sh
npm i
hexo g 
cp -r public/* ../haojie7366.github.io/
cd ../haojie7366.github.io
git add --all
git commit -m "$(date)"
git push
