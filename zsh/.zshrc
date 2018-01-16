# Profile .zshrc with: env ZSH_PROF= zsh -ic zpro
[[ -v ZSH_PROF ]] && zmodload zsh/zprof

# Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Load profile
source ~/.zprofile

# Load Antigen
ANTIGEN_SRC="/usr/share/zsh/share/antigen.zsh"
if [ -f "$ANTIGEN_SRC" ]; then
  source "$ANTIGEN_SRC"
  antigen init ${HOME}/.antigenrc
else
  >&2 echo "error: antigen is not installed."
fi

# Extensions
autoload -U zmv

# Load all zsh modules
for config (~/.zsh/*.zsh) source $config
