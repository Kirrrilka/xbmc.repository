#!/bin/sh

python repo_prep.py

TORRENT2HTTP_DIR=script.module.torrent2http
TORRENT2HTTP_ZIP=`ls $TORRENT2HTTP_DIR/*.zip`
TORRENT2HTTP_BIN_DIR=../../go/src/github.com/anteo/torrent2http/build

mkdir $TORRENT2HTTP_DIR/bin
cp -r $TORRENT2HTTP_BIN_DIR/* $TORRENT2HTTP_DIR/bin/
rm -r $TORRENT2HTTP_DIR/bin/windows_x64
zip -r $TORRENT2HTTP_ZIP $TORRENT2HTTP_DIR/bin
rm -r $TORRENT2HTTP_DIR/bin