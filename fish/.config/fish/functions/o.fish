function o
    if test (count $argv) -lt 1
        open .
    else
        open $argv[1]
    end
end