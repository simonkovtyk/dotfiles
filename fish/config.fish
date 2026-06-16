if status is-interactive
  set fish_greeting

  if not set -q FISH_INIT
    set -gx EDITOR helix
    set -gx DOCKER_HOST unix://$XDG_RUNTIME_DIR/docker.sock
    set -gx LS_COLORS "di=37:ln=37:so=37:pi=37:ex=37:bd=37:cd=37:su=37:sg=37:tw=37:ow=37:or=37:mi=37"
    set -gx FISH_INIT 1
  end

  function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    command yazi $argv --cwd-file="$tmp"

    if read -z cwd < "$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
      builtin cd -- "$cwd"
    end

    rm -f -- "$tmp"
  end

  zoxide init fish | source
  alias ls="lsd -A"
  alias la="lsd -l"
  alias lt="lsd --tree"
  alias hx="helix"
  alias kssh="kitty +kitten ssh"
  alias vi="nvim"

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

# Created by `pipx` on 2026-01-17 17:43:26
set PATH $PATH /home/simonkov/.local/bin
