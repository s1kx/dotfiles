# Use seahorse for entering SSH passphrases.
ASKPASS_BIN="/usr/lib/seahorse/ssh-askpass"
if [[ -x "$ASKPASS_BIN" ]]; then
  [[ ! -z "$DISPLAY" && -z "$SSH_ASKPASS" ]] && export SSH_ASKPASS="$ASKPASS_BIN"
fi
