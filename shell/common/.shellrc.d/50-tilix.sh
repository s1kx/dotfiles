# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  declare VTE_PROFILE="/etc/profile.d/vte.sh"
  test -f "$VTE_PROFILE" && . "$VTE_PROFILE"
fi
