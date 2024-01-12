#!/bin/sh

# Brew install from Brewfile.
brew bundle

# Make fish the default shell.
if ! grep --quiet "$(which fish)" /etc/shells; then
  echo $(which fish) | sudo tee -a /etc/shells
fi
chsh -s $(which fish)

# Install packer.nvim
packer_path="$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
if [ ! -d "$packer_path" ]; then
  git clone --depth 1 https://github.com/wbthomason/packer.nvim $packer_path
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
fi

# Install Laravel Valet.
composer global require laravel/valet
~/.composer/vendor/bin/valet install --no-interaction
