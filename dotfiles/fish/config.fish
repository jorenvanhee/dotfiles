source ~/.config/fish/path.fish

# Setup fnm
fnm env --use-on-cd | source

# Setup zoxide
zoxide init fish | source

# Abbreviations
abbr --add cat bat

# Git abbreviations (next to the ones provided by jhillyerd/plugin-git)
abbr --add gs git status -s
abbr --add gdc git diff --cached
