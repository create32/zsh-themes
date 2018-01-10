#!/bin/bash

THEMENAME=mh_create32

if [ ! -d $HOME/.oh-my-zsh/custom/themes ]; then
	mkdir $HOME/.oh-my-zsh/custom/themes
fi
if [ $? -ne 0 ]; then
	echo "I think.. There is no oh-my-zsh"
	exit $?
fi

cp $THEMENAME.zsh-theme $HOME/.oh-my-zsh/custom/themes/

echo "OK.. now write \"ZSH_THEME=${THEMENAME}\" in ~/.zshrc"

