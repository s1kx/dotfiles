#!/bin/bash

if [ $# -eq 0 ]; then
  PKG=(
    "env"
    "zsh"
    "vim"
    "tmux"
  )
else
  PKG="$@"
fi

stow ${PKG[@]}
