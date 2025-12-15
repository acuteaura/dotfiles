if not set -q SSH_AUTH_SOCK
if test -S ~/.local/state/1password-agent.sock
    set -x SSH_AUTH_SOCK ~/.local/state/1password-agent.sock
end

if test -S ~/.1password/agent.sock
    set -x SSH_AUTH_SOCK ~/.1password/agent.sock
end
end
