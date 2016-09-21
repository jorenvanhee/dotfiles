set fish_greeting ''


# source stuff
# ============

source ~/.config/fish/path.fish


# aliases
# =======

alias g 'git'
alias gm 'git commit -m'
alias ga 'git add .'
alias gs 'git status'
alias l 'ls -l'
alias la 'ls -al'
alias a 'php artisan'
alias phpspec './vendor/phpspec/phpspec/bin/phpspec'
alias phpunit './vendor/bin/phpunit'

# List all directories (also the ones starting with a dot).
alias lsd 'ls -ld .*/ */'

alias ip 'dig +short myip.opendns.com @resolver1.opendns.com'


# plugins
# =======

source ~/.config/fish/plugins/z.fish
