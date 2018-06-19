echo


# Increase startup speed by compiling completion dump
# Taken from: https://github.com/jaagr/dots/blob/master/.zsh/.zlogin
{ zcompdump="$ZDOTDIR/.zcompdump"
    if [[ -s "$zcompdump" && (! -s "${zcompdump}.zwc" || "$zcompdump" -nt "${zcompdump}.zwc") ]]; then
        zcompile "$zcompdump"
    fi
} &!

# Rehash font cache for polybar
xset +fp /home/cm1/.fonts
xset fp rehash
