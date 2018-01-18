# Load all files from .shell/rc.d directory
if [[ -d $HOME/.shellrc/rc.d ]]; then
  for file in $HOME/.shellrc/rc.d/*.sh; do
    source $file
  done
fi

# Set PATH
typeset -U path
path=(
	"${HOME}/bin" # user bin
	"${GOPATH}/bin" # golang bin
	"${GEM_HOME}/bin" # rubygem bin
	"$path[@]"
)

# Load local profile
if [[ -f ~/.zprofile.local ]]; then
	source ~/.zprofile.local
fi
