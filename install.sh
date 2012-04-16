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

echo "Fetching HyperSpec"
wget ftp://ftp.lispworks.com/pub/software_tools/reference/HyperSpec-$HYPER_SPEC_VERSION.tar.gz &> /dev/null
tar -xf HyperSpec-$HYPER_SPEC_VERSION.tar.gz
mv HyperSpec-$HYPER_SPEC_VERSION HyperSpec
rm HyperSpec-$HYPER_SPEC_VERSION.tar.gz

echo "Fetching Magit"
wget https://github.com/downloads/magit/magit/magit-$MAGIT_VERSION.tar.gz &> /dev/null
tar -xf magit-$MAGIT_VERSION.tar.gz 
mv magit-$MAGIT_VERSION magit
rm magit-$MAGIT_VERSION.tar.gz

