#!/bin/sh

if [ "$1" == "dotfiles_update_monitor" ]; then
    cp .dotfiles_update_monitor.sh $HOME/.dotfiles_update_monitor.sh
    sudo cp etc/systemd/system/dotfiles_update_monitor.service /etc/systemd/system/dotfiles_update_monitor.service
    sudo systemctl daemon-reload
    sudo systemctl enable dotfiles_update_monitor.service
    sudo systemctl start dotfiles_update_monitor.service
    echo "dotfiles update monitor has been installed and started successfully! Don't forget to have repository with dotfiles in $HOME/Development/dotfiles"
    exit 0
fi

if ! command -v zsh &> /dev/null; then
    echo "zsh is not installed. Please install zsh and try again." > /dev/stderr
    exit 1
fi
if ! command -v curl &> /dev/null; then
    echo "curl is not installed. Please install curl and try again." > /dev/stderr
    exit 1
fi
if ! command -v cargo &> /dev/null; then
    echo "cargo is not installed. Please install cargo and try again." > /dev/stderr
    exit 1
fi
if ! command -v npm &> /dev/null; then
    echo "npm is not installed. Please install npm and try again." > /dev/stderr
    exit 1
fi
if ! command -v code &> /dev/null; then
    echo "Visual Studio Code is not installed. Please install Visual Studio Code and try again." > /dev/stderr
    exit 1
fi

# Install all Visual Studio Code extensions
cat extensions/vscode.extensions | xargs -L 1 echo code --install-extension

# Install antigen to $HOME
curl -L git.io/antigen > $HOME/.antigen.zsh

# Check if bat is present
if ! command -v bat &> /dev/null; then
    echo "bat is not installed" > /dev/stderr
    echo "you can install it from https://github.com/sharkdp/bat" > /dev/stderr
fi

# Install eza
if ! command -v eza &> /dev/null; then
    echo "eza is not installed" > /dev/stderr
    echo "installing eza..."
    cargo install eza
fi

if ! command -v fd &> /dev/null; then
    echo "fd is not installed" > /dev/stderr
    echo "you can install it from https://github.com/sharkdp/fd" > /dev/stderr
fi

if ! command -v doggo &> /dev/null; then
    echo "doggo is not installed" > /dev/stderr
    echo "installing doggo..."
    curl -sS https://raw.githubusercontent.com/mr-karan/doggo/main/install.sh | sh
fi

# Check if Kakoune is present
if ! command -v kak &> /dev/null; then
    echo "kak is not installed" > /dev/stderr
    echo "you can install it from https://kakoune.org" > /dev/stderr
fi

# Check if btop is present
if ! command -v btop &> /dev/null; then
    echo "btop is not installed" > /dev/stderr
    echo "you can install it from https://github.com/aristocratos/btop" > /dev/stderr
fi

# Check if catnap is present
if ! command -v catnap &> /dev/null; then
    echo "catnap is not installed" > /dev/stderr
    echo "you can install it from https://catnap-fetch.xyz" > /dev/stderr
fi

npm config set prefix "~/.npm-global"

echo "Bootstrap finished successfully"
exit 0