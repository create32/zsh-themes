#!/bin/bash

# Getting Filename 
if [ $# -eq 1 ]; then 
	THEMENAME=$1
else 
	THEMENAME=mh_create32.zsh-theme
fi
FNAME=$(echo $THEMENAME | cut -d. -f1)

# Installing Theme
if [ ! -d $HOME/.oh-my-zsh/custom/themes ]; then
	mkdir $HOME/.oh-my-zsh/custom/themes
fi
if [ $? -ne 0 ]; then
	echo "I think.. There is no oh-my-zsh"
	exit $?
fi

cp $THEMENAME $HOME/.oh-my-zsh/custom/themes/

# Setting .zshrc
if [ ! "$ZSH_THEME" = "$FNAME" ]; then
	echo "ZSH_THEME=$FNAME on ~/.zshrc"
	read -n1 -r -p "Press any key to continue..." key
	vim ~/.zshrc
	zsh
fi
