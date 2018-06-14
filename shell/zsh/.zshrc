# Profile .zshrc with: env ZSH_PROF= zsh -ic zprof
[[ -v ZSH_PROF ]] && zmodload zsh/zprof

# Extensions
autoload -U zmv

# Load profile
source ~/.zprofile

# Load all files from .shell/zshrc.d directory
if [[ -d ~/.zshrc.d/ ]]; then
  for file in ~/.zshrc.d/*.zsh; do
    [[ -r "$file" ]] && . "$file"
  done
  unset file
fi

# Load local zshrc
[[ -r ~/.local/.zshrc ]] && . ~/.local/.zshrc
