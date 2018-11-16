# Load Antigen
local ANTIGEN_SRC="/usr/share/zsh/share/antigen.zsh"
local ANTIGENRC=~/.antigenrc
if [[ -r "$ANTIGEN_SRC" ]]; then
  . "$ANTIGEN_SRC"
  antigen init $ANTIGENRC
else
  >&2 echo "error: antigen is not installed."
fi
