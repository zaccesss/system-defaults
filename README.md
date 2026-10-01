# system-defaults

> Desktop preference scripts: macOS `defaults write` settings and GNOME `gsettings`, driven by one
> shared cross-platform preference model.

Preferences are defined once, independently of the operating system, then implemented through each
platform's native configuration mechanism. A setting is only translated across platforms where a
meaningful native equivalent exists, otherwise it stays platform-specific.

## What's here

- [`common/preferences.md`](common/preferences.md) - the cross-platform preference model.
- [`mac/defaults.sh`](mac/defaults.sh) - the macOS implementation, using `defaults write`.
- [`linux/defaults.sh`](linux/defaults.sh) - the GNOME implementation, using `gsettings`. It only
  applies settings for schemas and keys available in the current environment.
- [`guides/reference.md`](guides/reference.md) - every setting and what it does.
- [`guides/setup.md`](guides/setup.md) - how to apply the scripts safely.

## Setup

```bash
bash mac/defaults.sh     # macOS
bash linux/defaults.sh   # Linux with GNOME
```

> [!IMPORTANT]
> `mac/defaults.sh` changes real system behaviour the moment it runs: Dock icon size, Finder
> defaults, trackpad clicking, screenshot location and more. Read it first and change any value
> you do not want.

## Structure

| Path | Contents |
| --- | --- |
| [`ACCESSIBILITY.md`](ACCESSIBILITY.md) | Larger Dock icons, a still clock, visible extensions and predictable layouts |
| [`common/`](common/) | The shared preference model |
| [`mac/`](mac/) | macOS implementation |
| [`linux/`](linux/) | GNOME implementation |
| [`guides/`](guides/) | Setup walkthrough and settings reference |
