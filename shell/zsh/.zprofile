# Load all files from .shellrc.d/ directory
if [[ -d ~/.shellrc.d/ ]]; then
  for file in ~/.shellrc.d/*.sh; do
    [[ -r "$file" ]] && . "$file"
  done
  unset file
fi

# Load local profile
[[ -f ~/.local/.zprofile ]] && . ~/.local/.zprofile

# Set PATH
typeset -U path
[[ -d "${HOME}/bin" ]] && path=( "${HOME}/bin" "$path[@]" )
