function darwin_pkcs11_ykcs
	killall ssh-agent
	ssh-add -s /usr/local/lib/libykcs11_NOTALINK.dylib
end
