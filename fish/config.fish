if status is-interactive
	set fish_greeting

	if not set -q FISH_INIT
    set -gx EDITOR nvim
    set -gx DOCKER_HOST unix://$XDG_RUNTIME_DIR/docker.sock
    set -gx LS_COLORS "di=37:ln=37:so=37:pi=37:ex=37:bd=37:cd=37:su=37:sg=37:tw=37:ow=37:or=37:mi=37"
	  set -gx FISH_INIT 1
	end

  zoxide init fish | source
	alias vi="nvim"
  alias ls="lsd -A"
  alias la="lsd -l"
  alias lt="lsd --tree"

  if test "$TERMINAL_EMULATION" = "true"
    starship init fish | source
    fastfetch
  end
end

# pnpm
set -gx PNPM_HOME "/home/simonkov/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
