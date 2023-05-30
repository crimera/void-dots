# .bash_profile

# Get the aliases and functions
# [ -f $HOME/.bashrc ] && . $HOME/.bashrc

DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=$(pwd)/.dotnet

# WM exports
export MOZ_ENABLE_WAYLAND=1
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway
export QT_WAYLAND_FORCE_DPI=physical
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  dbus-run-session sway
fi
. "$HOME/.cargo/env"
