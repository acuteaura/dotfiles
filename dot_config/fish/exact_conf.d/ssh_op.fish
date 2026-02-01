if not set -q SSH_AUTH_SOCK; or string match -q '/private/tmp/com.apple.launchd.*/Listeners' "$SSH_AUTH_SOCK"
    if test -S ~/.local/state/1password-agent.sock
        set -x SSH_AUTH_SOCK ~/.local/state/1password-agent.sock
    end

    if test -S ~/.1password/agent.sock
        set -x SSH_AUTH_SOCK ~/.1password/agent.sock
    end

    if test -S ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
        set -x SSH_AUTH_SOCK ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
    end
end
