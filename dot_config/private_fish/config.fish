# Add to path.
fish_add_path ~/.local/bin
fish_add_path ~/.composer/vendor/bin

# Fast Node Manager (fnm).
fnm env --use-on-cd | source

# Source Symfony completions.
source ~/.config/fish/completions/sf_console.fish

# Abbreviations.
abbr --add cat bat

# Aliases.
alias sf="bin/console"
alias a="php artisan"
alias nvim="nvim --listen (nvim-server-pipe)"

# Git abbreviations (on top of the ones provided by jhillyerd/plugin-git).
abbr --add gs git status -s
abbr --add gdc git diff --cached
