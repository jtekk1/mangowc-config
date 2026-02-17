#!/bin/bash
set -e

# Set desktop environment for other apps
export XDG_CURRENT_DESKTOP=wlroots
export XDG_SESSION_TYPE=wayland
export WAYLAND_DISPLAY="${WAYLAND_DISPLAY:-wayland-0}"

# Update dbus environment for portals and other services
dbus-update-activation-environment DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE XDG_RUNTIME_DIR

# $(command -v xdg-desktop-portal-wlr) &
# sleep 0.2
#
# $(command -v xdg-desktop-portal-gtk) &
# sleep 0.2
#
# $(command -v xdg-desktop-portal) &
