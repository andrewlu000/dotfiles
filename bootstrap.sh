rm ~/.zshrc
ln -s ~/.config/.zshrc ~/.zshrc
ln -s ~/.config/.p10k.zsh ~/.p10k.zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# brew install viu

REDHAT="$(cat /etc/redhat-release)"
if [ "$REDHAT" == "Red Hat Enterprise Linux release 8.10 (Ootpa)" ]; then
	echo "Installing useful packages!"
#	sudo dnf install cargo 
fi
