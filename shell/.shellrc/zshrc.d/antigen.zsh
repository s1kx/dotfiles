# Load Antigen
ANTIGEN_SRC="/usr/share/zsh/share/antigen.zsh"
if [ -f "$ANTIGEN_SRC" ]; then
  source "$ANTIGEN_SRC"
  antigen init ${HOME}/.antigenrc
else
  >&2 echo "error: antigen is not installed."
fi
