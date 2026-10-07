# Changelog

All notable changes to this project are recorded here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Versioning follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

### Added

- macOS settings are captured from a real Mac (`bash mac/defaults.sh --capture`) using the keys in `mac/tracked.txt`, then applied by writing only values that differ. Accessibility settings such as pointer size and contrast are tracked too.
- A Windows implementation built the same way: `windows/tracked.txt` lists 33 HKEY_CURRENT_USER registry values, `windows/defaults.ps1 -Capture` records them and `-Plan` previews changes.
- Tests for both scripts, each on its own platform's CI runner.

### Added

- Initial release: a macOS `defaults write` script and a GNOME `gsettings` script
- A shared cross-platform preference model
- Setup and reference guides
- CI that lints the scripts and the markdown
- `ACCESSIBILITY.md`: larger Dock icons, a still clock, visible extensions and predictable layouts.

### Changed

- Tidied code comments and the contributor guide.
