# .bashrc
if [[ $- != *i* ]] ; then
  # shell is non-interactive. be done now!
  return
fi

# Load all files from .shellrc.d directory
if [[ -d $HOME/.shellrc.d/ ]]; then
  for file in ~/.shellrc.d/*.sh; do
    . $file
  done
fi
