#!/usr/bin/env bash

info="Backup - $(tail -1 /var/log/syncdir/syncdir.log)"

echo "$info" >> info.txt
echo "$info"
echo

git add info.txt
git commit -m "$info"
git push origin master

cd - || true
