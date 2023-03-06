function fix_fedora_pubkey_types
        sudo sed -i -r -e 's/^(PubkeyAcceptedKeyTypes )(.*)/\1ssh-rsa,\2/' /etc/crypto-policies/back-ends/opensshserver.config
        sudo sed -i -r -e 's/^(PubkeyAcceptedKeyTypes )(.*)/\1ssh-rsa,\2/' /etc/crypto-policies/back-ends/openssh.config
end
