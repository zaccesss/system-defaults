# Setup

Choose the implementation for the platform you are configuring.

## macOS

1. Review [mac/defaults.sh](../mac/defaults.sh) and [guides/reference.md](reference.md) first,
   since this script changes real system behaviour the moment it runs.
2. Run it: `bash mac/defaults.sh`.
3. The script restarts Dock, Finder and SystemUIServer itself so most changes take effect
   immediately, no logout or reboot needed.

## Linux

1. Review [linux/defaults.sh](../linux/defaults.sh) and [guides/reference.md](reference.md) first,
   since this script changes real desktop behaviour the moment it runs.
2. Confirm the required GNOME settings are available with `gsettings`.
3. Run it: `bash linux/defaults.sh`.
4. The script applies only settings for schemas and keys available in the current GNOME environment.

## Cross-Platform Preferences

[common/preferences.md](../common/preferences.md) defines the preferences independently of the
operating system.

Platform implementations use native configuration mechanisms and only translate a preference
when the platform provides a meaningful equivalent.

## Why this is safe to run more than once

Every implementation should set values outright rather than toggle or increment them, so running
it a second time leaves the system in the same intended state as the first run.

## Reverting a setting

Each platform uses its own native mechanism for reverting settings. The platform-specific
reference documentation should describe how individual overrides can be removed or restored to
the operating system's built-in default.
