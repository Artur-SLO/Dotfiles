function multicd
    set -l num (string match -r '\d+$' $argv)
    echo cd (string repeat -n $num ../)
end
