# Load Antigen
ANTIGEN_SRC="/usr/share/zsh/share/antigen.zsh"
if [[ -r "$ANTIGEN_SRC" ]]; then
  . "$ANTIGEN_SRC"
  antigen init ~/.antigenrc
else
  >&2 echo "error: antigen is not installed."
fi
