# Activate direnv
if [ -x "$(command -v direnv)" ]; then
  eval "$(direnv hook zsh)"
else
  >&2 echo "error: direnv is not installed."
fi
