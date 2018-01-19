# Profile .zshrc with: env ZSH_PROF= zsh -ic zpro
[[ -v ZSH_PROF ]] && zmodload zsh/zprof

# Extensions
autoload -U zmv

# Load profile
source ~/.zprofile

# change terminal title
#case $TERM in
#  xterm*)
#    precmd () {print -Pn "\e]0;%~\a"}
#    ;;
#esac

# Load all files from .shell/zshrc.d directory
if [[ -d $HOME/.shellrc/zshrc.d ]]; then
  for file in $HOME/.shellrc/zshrc.d/*.zsh; do
    source $file
  done
fi

# Better Terminal titles
case $TERM in
  xterm*)
	#autoload -Uz add-zsh-hoo
	local icon_dir="%~"
	local window_dir="%2~ - %/"

	# Shortcuts
	local username="%m"
	if [[ -n "$SSH_CLIENT" ]]; then
		username="%n@%m"
	fi
	# root -> #, else -> $
	local cmd_prefix="%(#.#.%$)"
	if [[ "$USER" != "$DEFAULT_USER" ]]; then
		cmd_prefix="${username}${cmd_prefix}"
	fi
	icon_title="${cmd_prefix} ${icon_dir}"

	window_title="${window_dir}"
	if [[ "$USER" != "$DEFAULT_USER" ]] || [[ -n "$SSH_CLIENT" ]]; then
		window_title="${window_title} \[%n\]"
	fi
	if [[ -n "$SSH_CLIENT" ]]; then
		window_title="%m: ${window_title}"
	fi

    add-zsh-hook precmd () {
		print -Pn "\e]1;${icon_title}\a"
		print -Pn "\e]2;${window_title}\a"
	}
    ;;
esac



if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi
