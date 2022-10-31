#! /usr/bin/env bash

sudo apt install fzf ripgrep make build-essential tmux git tree htop wget curl clang zsh libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev nmap cargo clangd astyle libmysqlclient-dev libpq-dev



# RVM
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.7

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add cargo PATH (.zshrc / .bashrc)
# export PATH="$HOME/.cargo/bin:$PATH"

gem install solargraph
