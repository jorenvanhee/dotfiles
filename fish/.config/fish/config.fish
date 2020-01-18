set fish_greeting ''

source ~/.config/fish/path.fish

# Install Fisher (https://github.com/jorgebucaran/fisher)
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# fnm
fnm env --multi | source

# aliases

abbr -a cat bat

# overwrite some jhillyerd/plugin-git aliases
abbr -a gm          git commit -m
abbr -a gme         git merge
abbr -a gs          git status -s
abbr -a gdc         git diff --cached
abbr -a gc          git checkout
abbr -a gap         git add --patch
