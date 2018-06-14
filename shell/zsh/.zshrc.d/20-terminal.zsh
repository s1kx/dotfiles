# Better Terminal titles
case $TERM in
  xterm*)
    add-zsh-hook precmd () {
      #autoload -Uz add-zsh-hoo
      local icon_dir="%~"
      local window_dir="%1~ - %/"

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

  		print -Pn "\e]1;${icon_title}\a"
  		print -Pn "\e]2;${window_title}\a"
  	}
    ;;
esac
