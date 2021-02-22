#!/bin/bash
[[ $(which sudo) = "" ]] && [[ ! $UID -eq 0 ]] && (echo Need root permission; exit 1)

git clone https://github.com/romkatv/powerlevel10k.git zsh/powerlevel10k
git clone https://github.com/ohmyzsh/ohmyzsh.git zsh/oh-my-zsh

cp -r zsh/ /opt || sudo cp -r zsh/ /opt 
ln -s /opt/zsh/zshrc ~/.zshrc
#ln -s /opt/zsh/oh-my-zsh ~/.oh-my-zsh
#ln -s /opt/zsh/p10k.zsh ~/.p10k.zsh

