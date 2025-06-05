if status is-interactive
	set fish_greeting

	if not set -q FISH_INIT
	  set -gx FISH_INIT 1
	  set -gx TERM xterm-256color
	  set -gx TERMINFO ~/.terminfo
	end

	alias vi="nvim"

	echo
	fastfetch
	echo
end
