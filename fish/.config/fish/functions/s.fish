function s
    if test (count $argv) -lt 1
        subl .
    else
        subl $argv[1]
    end
end