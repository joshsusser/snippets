# open all new and modified files in textmate tabs for open project:

git status -s -uall | cut -b 4- | xargs -n 1 mate

