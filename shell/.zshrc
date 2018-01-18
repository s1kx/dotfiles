# Profile .zshrc with: env ZSH_PROF= zsh -ic zpro
[[ -v ZSH_PROF ]] && zmodload zsh/zprof

# Extensions
autoload -U zmv


# Load profile
source ~/.zprofile

# Load all files from .shell/zshrc.d directory
if [ -d $HOME/.shellrc/zshrc.d ]; then
  for file in $HOME/.shellrc/zshrc.d/*.zsh; do
    source $file
  done
fi

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
