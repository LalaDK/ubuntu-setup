#! /usr/bin/env bash
mkdir -p "$HOME/src"
mkdir -p "$HOME/.fonts"

sudo apt install -y fzf ripgrep make build-essential tmux git tree htop wget curl clang zsh libsdl2-dev libsdl2-gfx-dev libsdl2-image-dev nmap cargo clangd astyle libmysqlclient-dev libpq-dev

# Install Nerd Font
rm -rv "$HOME/.fonts/Ubuntu.zip"
wget -O "$HOME/.fonts/Ubuntu.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/BitstreamVeraSansMono.zip
unzip "$HOME/.fonts/Ubuntu.zip" -d "$HOME/.fonts"
rm -rv "$HOME/.fonts/Ubuntu.zip"

# RVM & Ruby
if ! command -v rvm &> /dev/null
then
  gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
  \curl -sSL https://get.rvm.io | bash -s stable
  rvm install 2.7
else
  echo "RVM already installed."
fi

# Oh My Zsh
if [[ -d ~/.oh-my-zsh ]]; then
  echo "Oh My Zsh already installed."
else
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if ! command -v solargraph &> /dev/null
then
  gem install solargraph
else
  echo "Solargraph already installed."
fi

# Tmux Package Mananger
if [[ -d ~/.tmux/plugins/tpm ]]; then
  echo "Tmux Package Manager already installed."
else
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

git clone git@github.com:LalaDK/tmux.conf.git ~/.src/tmux.conf
source "$HOME/src/tmux.conf/install.sh"

git clone git@github.com:LalaDK/kakrc.git ~/src/kakrc
source "$HOME/src/kakrc/install.sh"
