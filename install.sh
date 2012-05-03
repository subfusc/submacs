#!/bin/bash

if [ ! -f /usr/bin/wget ]; then
    echo "Please install wget"
fi

echo "Welcome to Subfuscs emacs Config installation"
echo "Required installed programs for everything to work:"
echo "slime, AUCTeX, ibus-el"
echo "tested on emacs 23.4"
echo ""

echo "Disclaimer: Packages and programs downloaded under install"
echo "have individual licenses. Please look at each individual "
echo "packages homesite for information."

INSTALL_DIRECTORY=$HOME/.submacs/
DOTEMACS=$HOME/.emacs
PYTHON_MODE_VERSION=6.0.5
HYPER_SPEC_VERSION=7-0
MAGIT_VERSION=1.1.1

if [ ! -d $INSTALL_DIRECTORY ]; then
    mkdir $INSTALL_DIRECTORY
fi

cp src/*.el $INSTALL_DIRECTORY
cp README $INSTALL_DIRECTORY
cd $INSTALL_DIRECTORY

echo "Fetching Python Mode"
wget https://launchpad.net/python-mode/trunk/$PYTHON_MODE_VERSION/+download/python-mode.el-$PYTHON_MODE_VERSION.tar.gz &> /dev/null
tar -xf python-mode.el-$PYTHON_MODE_VERSION.tar.gz
mv python-mode.el-$PYTHON_MODE_VERSION python-mode
rm python-mode.el-$PYTHON_MODE_VERSION.tar.gz

echo "Fetching Slime"
wget http://common-lisp.net/project/slime/snapshots/slime-current.tgz &> /dev/null
tar -xf slime-current.tgz
mv slime-2* slime
rm slime-current.tgz

echo "Fetching HyperSpec"
mkdir HyperSpec
cd HyperSpec
wget ftp://ftp.lispworks.com/pub/software_tools/reference/HyperSpec-$HYPER_SPEC_VERSION.tar.gz &> /dev/null
tar -xf HyperSpec-$HYPER_SPEC_VERSION.tar.gz
rm HyperSpec-$HYPER_SPEC_VERSION.tar.gz
cd ..

echo "Fetching Magit"
wget https://github.com/downloads/magit/magit/magit-$MAGIT_VERSION.tar.gz &> /dev/null
tar -xf magit-$MAGIT_VERSION.tar.gz 
mv magit-$MAGIT_VERSION magit
rm magit-$MAGIT_VERSION.tar.gz

echo "Fetching Single files"
mkdir single-files
cd single-files
wget http://dishevelled.net/elisp/lambda-mode.el &> /dev/null
cd ..

if [ -f $DOTEMACS ]; then
    echo "NB: Backing up .emacs to .emacs-bck"
    mv $DOTEMACS ${DOTEMACS}-bck
fi

touch ${DOTEMACS}
echo ";; -*- coding: utf-8 -*-" >> ${DOTEMACS}
echo ";; 'The modern world uses UTF-8. Emacs is modern." >> ${DOTEMACS}
echo ";; Therefore emacs uses UTF-8.' -- Johanbev" >> ${DOTEMACS}

echo "(prefer-coding-system 'utf-8)" >> ${DOTEMACS}
echo '(set-language-environment "UTF-8")' >> ${DOTEMACS}

echo "(defvar install_directory \"${INSTALL_DIRECTORY}\")" >> ${DOTEMACS}
echo "(add-to-list 'load-path install_directory)" >> ${DOTEMACS}
echo "(require 'full-setup)" >> ${DOTEMACS}