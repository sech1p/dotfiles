source /home/sech1p/.antigen.zsh

export EDITOR="kak"

antigen use oh-my-zsh

antigen bundle command-not-found

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme agnoster 

alias e="$EDITOR"
alias vim="kak"
alias cat="bat"
alias find="fd"
alias dig="doggo"
alias htop="btop"
alias ls="eza"
alias catnap="clear && catnap"
alias neofetch="catnap"

mkd() {
    mkdir $1
    cd $_
}

export PSPDEV="/home/sech1p/pspdev"
export PATH="/home/sech1p/.code/bin:/home/sech1p/.local/bin:$PSPDEV:$PSPDEV/bin:$PATH"

source /home/sech1p/.local/bin/u

antigen apply

export PATH=$PATH:/home/sech1p/.npm-global/bin:/home/sech1p/.spicetify
