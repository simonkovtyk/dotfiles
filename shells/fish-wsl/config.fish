set fish_greeting

if not set -q FISH_INIT
  set -gx FISH_INIT 1

  set -gx TERM xterm-256color
  set -gx TERMINFO ~/.terminfo
  set -gx LS_COLORS "*.desktop=01;4:di=39;44"

  # https://superuser.com/questions/1617298/wsl-2-running-ubuntu-x-server-cant-open-display/1834709#1834709
  # https://github.com/microsoft/WSL/issues/12119
  if test -d /tmp/.X11-unix
    and not test -L /tmp/.X11-unix
    rmdir /tmp/.X11-unix && ln -s /mnt/wslg/.X11-unix /tmp/.X11-unix
  end

  alias vi="nvim"

  echo
  fastfetch
end
