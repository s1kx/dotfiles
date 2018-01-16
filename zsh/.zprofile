# Load common profile
emulate sh -c 'source ~/.profile'

# Set PATH
typeset -U path
path=(
	"${HOME}/bin"
	"${GOPATH}/bin"
	"$path[@]"
)
