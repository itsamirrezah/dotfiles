sudo pacman -S zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

cp ./.zshrc ~/.
cp ./.p10k.zsh ~/.
cp -r ../shell ~/.config/.
