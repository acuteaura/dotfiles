if type -q systemctl
    if test "active" = (systemctl --user is-active podman.socket)
        set -x DOCKER_HOST /run/user/(id -u)/podman/podman.sock
    end
end
