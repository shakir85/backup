#!/bin/bash

backup="$(tail -1 /var/log/syncdir/syncdir.log)"

echo "$backup" >> info.txt
echo "$backup"
echo

git add info.txt
git commit -m "$backup"
git push origin master

