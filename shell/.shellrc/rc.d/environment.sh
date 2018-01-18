# Editors
export VISUAL="vim"
export EDITOR="$VISUAL"
export PAGER="less"

# Use colored ls
alias ls='ls --color=always'

# speed up compilation by utilizing multiple cores
FREECPUS=1
export MAKEFLAGS="-j$(( $(nproc) - $FREECPUS ))"

# QEMU
export QEMU_AUDIO_DRV="pa"

# Ruby
export GEM_HOME="$(ruby -e 'print Gem.user_dir')"

# Go
export GOROOT="/usr/lib/go"
export GOPATH="$HOME/code/go"
export GO15VENDOREXPERIMENT=1

# project paths for pj
export CODE_PATH="${HOME}/code"
export PROJECT_PATHS=(
  "${GOPATH}/src/github.com"
  "${CODE_PATH}/github.com"
  "${CODE_PATH}"
)
