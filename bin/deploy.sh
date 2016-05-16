#! /bin/sh

echo "converting haml..."
sh ./bin/build.sh

if [ $# -eq 1 ]; then
  ci_message="$1"
else
  ci_message="auto generated"
fi
echo "commit-message: $ci_message"
echo "deploying..."

git add -A
git commit -m "$ci_message"
git push -u origin master

echo "done"