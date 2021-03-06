brew update
brew upgrade

brew install fish
read -r -p "Do you want to make fish your default shell? (y/n) " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    # Add fish to /etc/shells.
    if ! grep --quiet "/usr/local/bin/fish" /etc/shells; then
        echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
    fi
    # Make fish my default shell.
    chsh -s /usr/local/bin/fish
fi

brew install stow
brew install Schniz/tap/fnm
brew install the_silver_searcher
brew install fzf
brew install tldr
brew install python
brew install bat
brew install entr
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install rg

brew cleanup
