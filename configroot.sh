#!/bin/bash
set -e
apt update -y && apt upgrade -y 
apt install -y zsh git curl wget
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /root/.oh-my-zsh/custom/themes/powerlevel10k
wget -O /root/.p10k.zsh https://raw.githubusercontent.com/FKWT/ZshConfiguration/refs/heads/master/p10k.server
wget -O /root/.zshrc https://raw.githubusercontent.com/FKWT/ZshConfiguration/refs/heads/master/zshrc.server
