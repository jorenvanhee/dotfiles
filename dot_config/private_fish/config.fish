# Add to path.
fish_add_path ~/.local/bin

# Fast Node Manager (fnm).
fnm env --use-on-cd | source

# Abbreviations.
abbr --add cat bat

# Git abbreviations (on top of the ones provided by jhillyerd/plugin-git).
abbr --add gs git status -s
abbr --add gdc git diff --cached
