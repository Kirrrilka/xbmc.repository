#!/bin/sh

git add -A
git commit -a --amend -m "Initial commit"
git -c gc.reflogExpire=0 -c gc.reflogExpireUnreachable=0 \
  -c gc.rerereresolved=0 -c gc.rerereunresolved=0 \
  -c gc.pruneExpire=now gc "$@"
git push --force

