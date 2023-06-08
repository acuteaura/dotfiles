if test -e /usr/local/bin/brew
    set wine64bin (/usr/local/bin/brew --prefix game-porting-toolkit)/bin/wine64
    if test -e "$wine64bin"
        alias gptwine $wine64bin
    end
end