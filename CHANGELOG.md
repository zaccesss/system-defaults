# Changelog

All notable changes to this project are recorded here.

Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).
Versioning follows [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [Unreleased]

## [0.0.1] - 2026-10-22

### Added

- macOS colour settings (such as a custom pointer fill and outline) are captured as red, green,
  blue and alpha and written back as a typed dictionary, with tests.
- The custom pointer colour on macOS and Windows, the Windows pointer type and the Windows screen
  saver settings are tracked.
- macOS settings are captured from a real Mac (`bash mac/defaults.sh --capture`) using the keys in `mac/tracked.txt`, then applied by writing only values that differ. Accessibility settings such as pointer size and contrast are tracked too.
- A Windows implementation built the same way: `windows/tracked.txt` lists 39 HKEY_CURRENT_USER registry values, `windows/defaults.ps1 -Capture` records them and `-Plan` previews changes.
- Tests for both scripts, each on its own platform's CI runner.
- Initial release: a macOS `defaults write` script and a GNOME `gsettings` script
- A shared cross-platform preference model
- Setup and reference guides
- CI that lints the scripts and the markdown
- `ACCESSIBILITY.md`: larger Dock icons, a still clock, visible extensions and predictable layouts.

### Changed

- Tidied code comments and the contributor guide.

### Fixed

- Windows: an expandable path stored with `%USERPROFILE%` or spelt out in full now counts as
  matching, so it is no longer rewritten on every run.
