function bw_login
	if type -q security
		set BW_PASSWORD (security find-generic-password -s bitwarden-password -w)
		set -Ux BW_SESSION (bw unlock {$BW_PASSWORD} --raw)
	else
		set -Ux BW_SESSION (bw unlock --raw)
	end
end
