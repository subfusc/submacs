#!/bin/bash
# -*- coding: utf-8 -*-

INSTALL_DIRECTORY=$HOME/.submacs
USER_CONFIG_DIRECTORY=${INSTALL_DIRECTORY}/user-config
SYSTEM_CONFIG_DIRECTORY=${INSTALL_DIRECTORY}/system
DOTEMACS=$HOME/.emacs


REFRESH_PACKAGES="true"

function init() {
    cp src/*.el     ${SYSTEM_CONFIG_DIRECTORY}
    echo ";;; Custom user mods goes here" > ${USER_CONFIG_DIRECTORY}/user-init.el
    echo "(provide 'user-init)" >> ${USER_CONFIG_DIRECTORY}/user-init.el
}

function overwrite_dotemacs() {
    if [ -f ~/.emacs ]; then
	    rm $DOTEMACS
    fi

    echo "; -*- coding: utf-8 -*-"                                            > $DOTEMACS
    echo ""                                                                   >>$DOTEMACS
    echo "(prefer-coding-system 'utf-8)"                                      >>$DOTEMACS
    echo '(set-language-environment "utf-8")'                                 >>$DOTEMACS
    echo "(add-to-list 'load-path \"${SYSTEM_CONFIG_DIRECTORY}\")"            >>$DOTEMACS
    # echo "(add-to-list 'load-path \"${SYSTEM_CONFIG_DIRECTORY}/ruby-block\")" >>$DOTEMACS
    echo "(add-to-list 'load-path \"${USER_CONFIG_DIRECTORY}\")"              >>$DOTEMACS
    echo "(require 'submacs-init)"                                            >>$DOTEMACS
    echo "(require 'user-init)"                                               >>$DOTEMACS
}

function temp_emacs_melpa_file() {
    if [ -f ~/.emacs ]; then
	mv $DOTEMACS ${DOTEMACS}.bck
    fi

    echo "(require 'package)"                                       > $DOTEMACS
    echo "(add-to-list 'package-archives"                           >>$DOTEMACS
    echo "'(\"melpa\" . \"http://melpa.milkbox.net/packages/\") t)" >>$DOTEMACS
    echo "(package-initialize)"                                     >>$DOTEMACS
}

function refresh_packages() {
    if [ $REFRESH_PACKAGES == "true" ]; then
	emacs --batch --load ~/.emacs --eval "(package-refresh-contents)"
	REFRESH_PACKAGES="false"
    fi
}

function install_using_melpa() {
    refresh_packages
    emacs --batch --load ~/.emacs --eval "(package-install '${1})"
}

function clean() {
    rm -rfv ${SYSTEM_CONFIG_DIRECTORY}
    rm ~/.emacs
}

function newinstall() {
    mkdir -p ${USER_CONFIG_DIRECTORY}
    mkdir -p ${SYSTEM_CONFIG_DIRECTORY}
    temp_emacs_melpa_file
    cat $DOTEMACS
    install_using_melpa "multiple-cursors"
    install_using_melpa "magit"

    # git clone git@github.com:subfusc/ruby-block ${SYSTEM_CONFIG_DIRECTORY}/ruby-block
    init
    overwrite_dotemacs
}


function reinstall() {
    clean
    newinstall
}

OPT=NEWINSTALL

while getopts “r” OPTION
do
    case $OPTION in
	    r) OPT=REINSTALL;;
    esac
done

case $OPT in
    NEWINSTALL)
	    newinstall;;
    REINSTALL)
	    reinstall;;
esac
