set -x XDG_CONFIG_HOME {$HOME}/.config
set -x XDG_DATA_HOME {$HOME}/.local/share
set -x XDG_STATE_HOME {$HOME}/.local/state
set -x XDG_CACHE_HOME {$HOME}/.cache

if test (uname) = "Darwin"
    set -x XDG_CACHE_HOME ~/Library/Caches
end

if test ! -d "$XDG_RUNTIME_DIR"
    set -Ux XDG_RUNTIME_DIR (mktemp -d)
end

mkdir -p {$XDG_CONFIG_HOME} {$XDG_DATA_HOME} {$XDG_STATE_HOME} {$XDG_CACHE_HOME}

set -x ANDROID_HOME {$XDG_DATA_HOME}/android
set -x ANSIBLE_HOME {$XDG_DATA_HOME}/ansible
set -x ASDF_DATA_DIR {$XDG_DATA_HOME}/asdf
set -x AWS_CONFIG_FILE {$XDG_CONFIG_HOME}/aws/config
set -x AWS_SHARED_CREDENTIALS_FILE {$XDG_CONFIG_HOME}/aws/credentials
set -x AZURE_CONFIG_DIR {$XDG_CONFIG_HOME}/azure
set -x CARGO_HOME {$XDG_DATA_HOME}/cargo
# more trouble than worth
#set -x DOCKER_CONFIG {$XDG_CONFIG_HOME}/docker
set -x GNUPGHOME {$XDG_DATA_HOME}/gnupg
set -x GOPATH {$XDG_DATA_HOME}/go
set -x HISTFILE {$XDG_STATE_HOME}/bash/history
set -x IPYTHONDIR {$XDG_CONFIG_HOME}/ipython
set -x KUBECACHEDIR {$XDG_CACHE_HOME}/kube
set -x LESSHISTFILE {$XDG_STATE_HOME}/less/history
set -x NODE_REPL_HISTORY {$XDG_DATA_HOME}/node_repl_history
set -x NPM_CONFIG_USERCONFIG {$XDG_CONFIG_HOME}/npm/npmrc
set -x PARALLEL_HOME {$XDG_CONFIG_HOME}/parallel
set -x PYTHONSTARTUP {$XDG_DATA_HOME}/pythonrc
set -x RUSTUP_HOME {$XDG_DATA_HOME}/rustup
set -x TF_PLUGIN_CACHE_DIR {$XDG_CACHE_HOME}/terraform

mkdir -p {$TF_PLUGIN_CACHE_DIR}
