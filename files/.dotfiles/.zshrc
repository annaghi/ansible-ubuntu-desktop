export PATH="$HOME/.local/bin:$PATH"

# https://github.com/sorin-ionescu/prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# https://github.com/nvm-sh/nvm
ZSH_DIR=$HOME/.zsh
source "$ZSH_DIR/nvm.zshrc"
