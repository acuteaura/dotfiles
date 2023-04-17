if test -d '/usr/local/go/bin'
	fish_add_path /usr/local/go/bin
end

# Darwin path is set via private_Library/LaunchAgents/environment.plist
if test (uname) != "Darwin"
	set -x GOPATH ~/.local/go
end

if test -d {$GOPATH}/bin
	fish_add_path {$GOPATH}/bin
end
