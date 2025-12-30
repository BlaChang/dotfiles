#!/bin/bash

fcd () {
  if [[ $# -eq 0 ]]; then
    relevant_dirs=(
      ~/Downloads/
      ~/Programming/
      ~/Documents/
      ~/dotfiles/.config/nvim/
      ~/dotfiles/.config/scripts/
      ~/dotfiles/.config/tmux/
      ~/Desktop/
    )
  else
    relevant_dirs=$1
  fi
  cd "$(fzf --walker-root "${relevant_dirs[@]}" --walker dir)"
}
