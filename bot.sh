#!/usr/bin/env bash

backup="$(tail -1 /var/log/syncdir/syncdir.log)"

echo "$info" >> info.txt
echo "$info"
echo

git add info.txt
git commit -m "$backup"
git push origin master

cd -
