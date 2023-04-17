set PYTHON_LIBEXEC_PATH /opt/homebrew/Cellar/python@3.11/3.11.1/libexec/bin
set PYTHON_USER_BIN_PATH /Users/aurelia/Library/Python/3.11/bin

if test -d $PYTHON_LIBEXEC_PATH
    fish_add_path -p $PYTHON_LIBEXEC_PATH
end

if test -d $PYTHON_USER_BIN_PATH
    fish_add_path -p $PYTHON_USER_BIN_PATH
end