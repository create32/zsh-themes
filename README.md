# zsh-themes

[install oh-my-zsh]
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

[install theme]
./install.sh

[#############################################]<br />
I use powerlevel10k
```
[[ $(which sudo) = "" ]] && [[ ! $UID -eq 0 ]] && echo Need root permission; exit 1
git clone https://github.com/romkatv/powerlevel10k.git zsh/powerlevel10k
git clone https://github.com/ohmyzsh/ohmyzsh.git zsh/ohmyzsh
sudo cp -r zsh/ /opt
ln -s /opt/zsh/oh-my-zsh ~/.oh-my-zsh
ln -s /opt/zsh/zshrc ~/.zshrc
ln -s /opt/zsh/p10k.zsh ~/.p10k.zsh
```
