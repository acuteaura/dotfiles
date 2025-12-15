#!/usr/bin/env bash

set -eou pipefail

PROJECT_DIR="$HOME/Projects"
DOTFILE_SYMLINK_TARGET="$PROJECT_DIR/dotfiles"
mkdir -p "$PROJECT_DIR"

# Only create symlink if nothing exists at the target location
if [ ! -e "$DOTFILE_SYMLINK_TARGET" ]; then
	ln -s "$HOME/.local/share/chezmoi" "$DOTFILE_SYMLINK_TARGET"
fi
