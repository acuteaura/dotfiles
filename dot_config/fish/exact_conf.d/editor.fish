if test "$TERM_PROGRAM" = "vscode"
    set -x EDITOR "code -w"
else
    set -x EDITOR nano
end