# editor
export VISUAL="vim"
export EDITOR="$VISUAL"



# Load local config
if [[ -f ~/.zshenv.local ]]; then
  source ~/.zshenv.local
fi
