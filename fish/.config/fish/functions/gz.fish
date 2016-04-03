function gz
    set -l file $argv[1]
    echo 'orig size    (bytes): '
    cat $file | wc -c
    echo 'gzipped size (bytes): '
    gzip -c $file | wc -c
end