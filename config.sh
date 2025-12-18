#!/bin/bash
set -e

sudo apt update -y && sudo apt upgrade -y 
sudo apt install -y zsh git curl wget
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
wget -O ~/.p10k.zsh https://raw.githubusercontent.com/FKWT/ZshConfiguration/refs/heads/master/p10k.server
wget -O ~/.zshrc https://raw.githubusercontent.com/FKWT/ZshConfiguration/refs/heads/master/zshrc.server
