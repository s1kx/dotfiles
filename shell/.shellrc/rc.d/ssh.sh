# Use seahorse for entering SSH passphrases.
ASKPASS_BIN="/usr/lib/seahorse/seahorse-ssh-askpass"
if [ -x "$ASKPASS_BIN" ]; then
  [ ! -z "$DISPLAY" ] && export SSH_ASKPASS="/usr/lib/seahorse/seahorse-ssh-askpass"
fi
