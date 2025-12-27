#!/usr/bin/bash
set +e

# Set desktop environment for blueberry and other apps
export XDG_CURRENT_DESKTOP=wlroots
export XDG_SESSION_TYPE=wayland
export WAYLAND_DISPLAY="${WAYLAND_DISPLAY:-wayland-0}"

# Update dbus environment for portals and other services
dbus-update-activation-environment DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE XCURSOR_THEME XCURSOR_SIZE

# Night light filter
# wlsunset -T 4501 -t 4500 >/dev/null 2>&1 &

# Authentication agent
# polkit-gnome-authentication-agent-1 >/dev/null 2>&1 &
