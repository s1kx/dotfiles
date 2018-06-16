# .bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Load all files from .shell/login.d directory
if [[ -d ~/.shellrc.d/ ]]; then
  for file in ~/.shellrc.d/*.sh; do
    . "$file"
  done
  unset file
fi
