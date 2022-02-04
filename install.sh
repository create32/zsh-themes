#!/bin/bash
[[ $(which sudo) = "" ]] && [[ ! $UID -eq 0 ]] && (echo Need root permission; exit 1)

git clone https://github.com/romkatv/powerlevel10k.git zsh/powerlevel10k
git clone https://github.com/ohmyzsh/ohmyzsh.git zsh/oh-my-zsh

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi

# for user
cp -r zsh ~/.zsh
ln -s ~/.zsh/zshrc_user ~/.zshrc

# for global install
# cp -r zsh /opt/ || sudo cp -r zsh /opt/
# ln -s /opt/zsh/zshrc ~/.zshrc

