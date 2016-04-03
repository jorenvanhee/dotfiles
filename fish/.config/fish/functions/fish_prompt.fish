# Git prompt setup
set __fish_git_prompt_showdirtystate true
set __fish_git_prompt_showstashstate true
set __fish_git_prompt_showuntrackedfiles true
set __fish_git_prompt_showupstream git informative
set __fish_git_prompt_char_untrackedfiles '?'
set __fish_git_prompt_char_stateseparator ' '

function prompt_segment
    if test (count $argv) -lt 3
        return
    end

    set_color -b $argv[1]
    set_color $argv[2]
    echo -n $argv[3]
end

function fish_prompt
    # newline
    echo -e -n '\n'

    # pwd
    prompt_segment normal blue (prompt_pwd)

    # git
    prompt_segment normal green (__fish_git_prompt)

    # newline
    echo -e -n '\n'

    # -
    prompt_segment normal white '$ '
end