#!/usr/bin/env bash
set -euo pipefail

# GNOME implementation of the shared preferences.
# Applies cross-platform preferences through native GNOME settings.

if ! command -v gsettings >/dev/null 2>&1; then
    printf 'Error: gsettings is required.\n' >&2
    exit 1
fi

set_gsetting() {
    local schema="$1"
    local key="$2"
    local value="$3"

    if gsettings list-keys "$schema" 2>/dev/null | grep -Fxq "$key"; then
        gsettings set "$schema" "$key" "$value"
    fi
}

# Clock
set_gsetting org.gnome.desktop.interface clock-format "'12h'"
set_gsetting org.gnome.desktop.interface clock-show-date false
set_gsetting org.gnome.desktop.interface clock-show-seconds false
set_gsetting org.gnome.desktop.interface clock-show-weekday true

# Files
set_gsetting org.gnome.nautilus.preferences default-folder-viewer "'list-view'"

# Trash
set_gsetting org.gnome.desktop.privacy remove-old-trash-files true
set_gsetting org.gnome.desktop.privacy old-files-age 30

# Touchpad
set_gsetting org.gnome.desktop.peripherals.touchpad tap-to-click false

# Workspaces
set_gsetting org.gnome.mutter dynamic-workspaces false

printf 'Linux defaults applied.\n'
