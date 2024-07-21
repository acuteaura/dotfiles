if test -f /nix/var/nix/profiles/default/etc/profile.d/nix.fish
    source /nix/var/nix/profiles/default/etc/profile.d/nix.fish
else if test -f ~/.nix-profile/etc/profile.d/nix.fish
    source /home/aurelia/.nix-profile/etc/profile.d/nix.fish
end
