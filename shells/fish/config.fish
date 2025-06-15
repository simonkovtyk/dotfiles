if status is-interactive
	set fish_greeting

	if not set -q FISH_INIT
	  set -gx FISH_INIT 1
	  set -gx TERM xterm-256color
	  set -gx TERMINFO ~/.terminfo
	end

	alias vi="nvim"
  alias la="lsd"

  if test "$terminal_emulation" = "true"
    zoxide init fish | source
    starship init fish | source
    fastfetch
  end

end

