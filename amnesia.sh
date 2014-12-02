#!/bin/bash
#deisnged for openSUSE
mkdir .tmp
ln -s .tmp tmp
cd tmp
mkdir WORKING_dir
cd WORKING_dir
git clone git://github.com/thomhastings/bt5-scripts bt5s
git clone git://github.com/thomhastings/os-scripts f0Ss
git clone git://github.com/thomhastings/attackvector avlx
git clone git://github.com/thomhastings/c0ntempt c0rt
git clone git://github.com/kaneda/kinfe knjx
git clone git://github.com/ksoona/attackvector s00n
git clone git://github.com/thomhastings/dotfiles .dot
cd .dot
sh install.sh
cd ..
git init
git add .
git subtree add --prefix=bt5s backtrack
git subtree add --prefix=f0Ss gotmilkos
git subtree add --prefix=avlx attackvck
git subtree add --prefix=c0rt cortanamk
git subtree add --prefix=knjx joshkando
git subtree add --prefix=s00n kensoona0
git subtree add --prefix=.dot mydotfile
git commit -a -m "added primary base subtrees"
sudo -s
sudo zypper install tree htop screen zsh lynx vim yakuake audacious figlet
