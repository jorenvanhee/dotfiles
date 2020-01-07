function fish_user_key_bindings
    fish_vi_key_bindings

    # https://stackoverflow.com/questions/32037197/ctrl-f-no-longer-works-to-accept-suggestions-why
    bind -M insert \cf accept-autosuggestion
    bind \cf accept-autosuggestion
end
