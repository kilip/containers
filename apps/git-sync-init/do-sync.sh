#!/bin/sh -ex

DIR="$GIT_SYNC_ROOT/$GIT_SYNC_DEST"
if [ ! -e $DIR ]; then
    /git-sync -v=3
fi

exit 0
