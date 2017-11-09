set fish_greeting ''


# source stuff
# ============

source ~/.config/fish/path.fish


# aliases
# =======

abbr g='git'
alias gm='git commit -m'
abbr ga='git add'
abbr gap='git add -p'
alias gaa 'git add .'
alias gs 'git status'
abbr gd='git diff'
alias gdc='git diff --cached'
abbr gc='git checkout'
abbr gb='git branch'
alias gba='git branch --all'
abbr gr='git reset'
abbr gss='git stash save'
alias gsl='git stash list'
abbr gsa='git stash apply'
abbr gsd='git stash drop'
alias gp='git pull'

alias l 'ls -l'
alias la 'ls -alh'

# List all directories (also the ones starting with a dot).
alias lsd 'ls -ld .*/ */'

alias a 'php artisan'

alias phpspec './vendor/phpspec/phpspec/bin/phpspec'
alias phpunit './vendor/bin/phpunit'

alias ip 'dig +short myip.opendns.com @resolver1.opendns.com'

alias v mvim


# plugins
# =======

source ~/.config/fish/plugins/z.fish
