# Use seahorse for entering SSH passphrases.
#[ -n "$DISPLAY" ] && export SSH_ASKPASS="/usr/lib/seahorse/seahorse-ssh-askpass"

# XDG directory environment
# https://wiki.archlinux.org/index.php/XDG_Base_Directory_support
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Use colored ls
alias ls='ls --color=always'

# speed up compilation by utilizing multiple cores
FREECPUS=2
export MAKEFLAGS="-j $(( $(nproc) - $FREECPUS ))"

# QEMU
export QEMU_AUDIO_DRV="pa"

# Ruby
export GEM_HOME=$(ruby -e 'print Gem.user_dir')
export PATH="${GEM_HOME}/bin:${PATH}"

# Go
export GOROOT="/usr/lib/go"
export GOPATH="$HOME/code/go"
export GO15VENDOREXPERIMENT=1
