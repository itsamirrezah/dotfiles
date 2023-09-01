#fnm
curl -fsSL https://fnm.vercel.app/install | bash

#docker
sudo pacman -S docker docker-compose
sudo systemctl enable docker.service
sudo systemctl enable docker.socket


#nvim
sudo pacman -S neovim tmux
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

sudo pacman visual-studio-code-bin intellij-idea-community-edition

