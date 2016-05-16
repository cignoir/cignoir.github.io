#! /bin/sh

updated_at=`date "+%Y-%m-%dT%H:%M:%S+09:00"`
echo $updated_at

bundle exec html2haml --unix-newlines index.html.haml index.html

git add .
git commit -m "Updated at $updated_at"
#git push -u origin master
