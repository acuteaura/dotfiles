set BREW_PREFIX /non/existant
if test -d /home/linuxbrew/.linuxbrew
    set BREW_PREFIX /home/linuxbrew/.linuxbrew
end

if test -d /opt/homebrew
    set BREW_PREFIX /opt/homebrew
end

if test -d $BREW_PREFIX
    eval ($BREW_PREFIX/bin/brew shellenv)

    if test -d (brew --prefix)"/share/fish/completions"
        set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
    end

    if test -d (brew --prefix)"/share/fish/vendor_completions.d"
        set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
    end
end

if test -e /usr/local/bin/brew
    alias brew86 /usr/local/bin/brew
end
