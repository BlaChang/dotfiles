
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/blakechang/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/blakechang/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/blakechang/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/blakechang/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source ~/.my_custom_commands.sh
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"
# Previous Commands
#autoload -U up-line-or-beginning-search
#autoload -U down-line-or-beginning-search
#zle -N up-line-or-beginning-search
#zle -N down-line-or-beginning-search
#bindkey "^[[A" up-line-or-beginning-search # Up
#bindkey "^[[B" down-line-or-beginning-search # Down

#Save last million commands
export HISTFILESIZE=100000000000000
export HISTSIZE=1000000000000000

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export PATH="/Users/blakechang/opt/anaconda3/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export LSCOLORS=ExGxDxDxCxDxDxFxFxexEx
PROMPT='%F{white}%n%f%# '
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias typst0.11="/usr/local/bin/typst"
alias ls='ls -GpF'  #Get Colors to work with ls
#alias fcd='source ~/dotfiles/.config/scripts/fzfcd.sh' #As in short for fzf cd
export PS1='%n@%m %1~ %# '
source <(fzf --zsh)

#source all custom commands
for file in ~/.config/scripts/*; do 
  if [ -f "$file" ]; then
    echo "$file"
    source "$file"
  fi
done


function pet-select() {
  BUFFER=$(pet search --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle redisplay
}
zle -N pet-select
stty -ixon
bindkey '^s' pet-select
