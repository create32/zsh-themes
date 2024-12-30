#!/bin/bash
if [ "$(which zsh)" == "" ]; then
    echo "zsh is not installed"
    exit 1
fi

cd "$(dirname "$0")"



git clone https://github.com/romkatv/powerlevel10k.git zsh/powerlevel10k
git clone https://github.com/ohmyzsh/ohmyzsh.git zsh/oh-my-zsh

# .zsh directory
if [ -d ~/.zsh ]; then
    echo "~/.zsh already exists"
    exit 1
else
    cp -r zsh ~/.zsh
fi

# .zshrc
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
ln -s ~/.zsh/zshrc_user ~/.zshrc

# for global install
# cp -r zsh /opt/ || sudo cp -r zsh /opt/
# ln -s /opt/zsh/zshrc ~/.zshrc

if [ "$(which zsh)" != "" ] || [ "$SHELL" != "$(which zsh)" ]; then
    chsh -s $(which zsh)
fi
