# Don't show user@host if local
#export DEFAULT_USER=`whoami`

# Load local profile
[[ -f ~/.local/.zprofile ]] && . ~/.local/.zprofile

# Load all files from .shell/rc.d directory
if [[ -d ~/.shellrc.d/ ]]; then
  for file in ~/.shellrc.d/*.sh; do
    [[ -r "$file" ]] && . "$file"
  done
  unset file
fi

# Set PATH
typeset -U path
path=(
	"${HOME}/bin" # user bin
	"$path[@]"
)
