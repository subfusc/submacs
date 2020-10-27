#!/bin/bash
# -*- coding: utf-8 -*-

INSTALL_DIRECTORY=$HOME/.submacs
USER_CONFIG_DIRECTORY=${INSTALL_DIRECTORY}/user-config
SYSTEM_CONFIG_DIRECTORY=${INSTALL_DIRECTORY}/system
EXECUTABLE=emacs
DOTEMACS=${HOME}/.emacs
BATCH_ARGS="-u ${USER} --batch"

REFRESH_PACKAGES="true"

function copy_submacs_files() {
  cp src/*.el ${SYSTEM_CONFIG_DIRECTORY}
  git clone git@github.com:subfusc/ruby-block ${SYSTEM_CONFIG_DIRECTORY}/ruby-block

  mkdir -p ${USER_CONFIG_DIRECTORY}

  echo ";;; Custom user mods goes here"  > ${USER_CONFIG_DIRECTORY}/user-init.el
  echo "(provide 'user-init)"           >> ${USER_CONFIG_DIRECTORY}/user-init.el
}

function pre_install_dotemacs() {
  if [ -f ${DOTEMACS} ]; then
    rm $DOTEMACS
  fi

  mkdir -p ${SYSTEM_CONFIG_DIRECTORY}
  cp src/melpa.el ${SYSTEM_CONFIG_DIRECTORY}

  echo "; -*- coding: utf-8 -*-"                                 > $DOTEMACS
  echo ""                                                        >>$DOTEMACS
  echo "(prefer-coding-system 'utf-8)"                           >>$DOTEMACS
  echo '(set-language-environment "utf-8")'                      >>$DOTEMACS
  echo "(add-to-list 'load-path \"${SYSTEM_CONFIG_DIRECTORY}\")" >>$DOTEMACS
  echo "(require 'melpa)"                                        >>$DOTEMACS

}

function add_load_paths_to_submacs() {
  echo "(add-to-list 'load-path \"${SYSTEM_CONFIG_DIRECTORY}/ruby-block\")" >>$DOTEMACS
  echo "(add-to-list 'load-path \"${USER_CONFIG_DIRECTORY}\")"              >>$DOTEMACS
  echo "(require 'submacs-init)"                                            >>$DOTEMACS
  echo "(require 'user-init)"                                               >>$DOTEMACS
}

function install_packages() {
  $EXECUTABLE $BATCH_ARGS --script install/package-install.el
}

function update_gnu_keyring() {
  $EXECUTABLE $BATCH_ARGS --script install/update-keyring.el
}

function clean() {
  rm -rfv ${SYSTEM_CONFIG_DIRECTORY}
  rm $DOTEMACS
  rm -rfv ~/.emacs.d
}

function newinstall() {
  pre_install_dotemacs
  update_gnu_keyring
  install_packages
  copy_submacs_files
  add_load_paths_to_submacs
}

function reinstall() {
  clean
  newinstall
}

OPT=NEWINSTALL

while getopts “rc” OPTION
do
  case $OPTION in
    r) OPT=REINSTALL;;
    c) OPT=CLEAN;;
  esac
done

case $OPT in
  NEWINSTALL)
    newinstall;;
  REINSTALL)
    reinstall;;
  CLEAN)
    clean;;
esac
