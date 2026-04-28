source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

function r
    set tmp (mktemp)
    or return
    ranger --choosedir="$tmp" $argv
    if test -s "$tmp"
        cd -- (cat "$tmp")
    end
    rm -f -- "$tmp"
end
