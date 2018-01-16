# Wrap commands with novpn to bypass standard routes
if [ -x "$(command -v direnv)" ]; then
  alias flatpak='novpn flatpak '
  alias pacaur='novpn pacaur '
  alias youtube-dl='novpn youtube-dl '
fi
