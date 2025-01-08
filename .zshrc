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

export PS2DEV="/home/sech1p/ps2dev"
export PS2SDK="$PS2DEV/ps2sdk"
export GSKIT="$PS2DEV/gsKit"

export PATH="/home/sech1p/.code/bin:/home/sech1p/.local/bin:$PSPDEV:$PSPDEV/bin:$PS2DEV:$PS2DEV/bin:$PS2DEV/ee/bin:$PS2DEV/iop/bin:$PS2DEV/dvp/bin:$PS2SDK/bin:$PATH"

source /home/sech1p/.local/bin/u

antigen apply

export PATH=$PATH:/home/sech1p/.npm-global/bin:/home/sech1p/.spicetify
