#!/bin/bash

#
# This script monitors files from $FILES_TO_MONITOR array
#
# When they're updated, the script copies them from home directory to workspace,
# with dotfiles repository
#
# If you want the same dotfiles update monitor, type:
#   $ ./bootstrap.sh dotfiles_update_monitor
#
# in your terminal, and there you go
#
# tl;dr: Script updates dotfiles automatically (on their modification) in dotfiles repository
#

SOURCE_DIR="$HOME"

TARGET_DIR="$HOME/Development/dotfiles"

FILES_TO_MONITOR=(".vimrc" ".gitconfig" ".zshrc")

copy_file() {
    local file="$1"
    cp "$SOURCE_DIR/$file" "$TARGET_DIR/$file"
    echo "Copied $file to $TARGET_DIR"
}

while true; do
    for file in "${FILES_TO_MONITOR[@]}"; do
        inotifywait -e close_write,moved_to,create "$SOURCE_DIR/$file" && copy_file "$file" &
    done
    wait
done
