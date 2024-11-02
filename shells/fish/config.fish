set -x TERM xterm-256color
set -x TERMINFO ~/.terminfo
set LS_COLORS "*.desktop=01;4:di=39;44"

if type neofetch >/dev/null 2>&1
  neofetch
end
