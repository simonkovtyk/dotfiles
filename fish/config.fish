if status is-interactive
    set fish_greeting

    if not set -q FISH_INIT
        set -gx EDITOR helix
        set -gx DOCKER_HOST unix://$XDG_RUNTIME_DIR/docker.sock
        set -gx LS_COLORS "di=37:ln=37:so=37:pi=37:ex=37:bd=37:cd=37:su=37:sg=37:tw=37:ow=37:or=37:mi=37"
        set -gx FISH_INIT 1
        set -gx FZF_DEFAULT_OPTS_FILE "/home/simonkov/.config/fzf/dark-orchid.fzfrc"
        set -gx RIPGREP_CONFIG_PATH "/home/simonkov/.config/ripgrep/dark-orchid.conf"
    end

    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"

        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end

        rm -f -- "$tmp"
    end

    zoxide init fish | source
    alias ls="lsd -A"
    alias la="lsd -l"
    alias lt="lsd --tree"
    alias kssh="kitty +kitten ssh"
    alias vi="nvim"
    alias yank="yank -- wl-copy"
    #alias hx="helix"
    set -gx HELIX_RUNTIME /home/simonkov/Projects/helix-editor/helix/runtime
    alias hx="/home/simonkov/.cargo/bin/hx"

    if test "$TERMINAL_EMULATION" = true
        starship init fish | source
        fastfetch
    end
end

# pnpm
set -gx PNPM_HOME "/home/simonkov/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
    set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

# Created by `pipx` on 2026-01-17 17:43:26
set PATH $PATH /home/simonkov/.local/bin

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

fish_add_path /home/simonkov/.spicetify
