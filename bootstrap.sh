#!/bin/sh

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

echo "Bootstrap finished successfully"
exit 0