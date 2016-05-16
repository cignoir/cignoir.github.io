#! /bin/sh

ci_message="no description"
if [ $# eq 1 ]; then
  ci_message="$1"
fi
echo $ci_message

bundle exec haml index.html.haml index.html

git add -A
git commit -m "$ci_message"
git push -u origin master
