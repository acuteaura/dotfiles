# this file is zz_ prefixed so it is always loaded after brew.fish
if type -q brew
    if test -f (brew --prefix asdf)/libexec/asdf.fish
        source (brew --prefix asdf)/libexec/asdf.fish
    end
else
    if test -f {$ASDF_DATA_DIR}/asdf.fish
        source {$ASDF_DATA_DIR}/asdf.fish
    end
end