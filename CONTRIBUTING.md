# Contributing

Thanks for taking an interest. Contributions are welcome: setting corrections, new platform
implementations and guide improvements.

## What belongs here

- A setting with a wrong key, domain or value
- A preference that has a meaningful native equivalent on another platform
- A new platform implementation built on the shared model in
  [common/preferences.md](common/preferences.md)
- Improvements to the guides

## What does not belong here

- A setting that only reflects one person's taste rather than a sensible default, keep that in
  your own copy

## How to contribute

1. Fork the repository and create a branch named `fix/<short-description>` or
   `feat/<short-description>`.
2. Make your change. For a macOS setting, confirm the key with `defaults read <domain> <key>`
   before adding it. For a GNOME setting, confirm it with `gsettings list-keys <schema>`.
3. Syntax-check the scripts with `bash -n` and run `shellcheck` over them.
4. Open a pull request with a clear title and a one-paragraph description of what changed and
   why. Document the setting in [guides/reference.md](guides/reference.md).

## Style rules

> [!IMPORTANT]
> - **Comments**: explain the why, not the what.
> - **UK English** in prose and documentation.

## Reporting bugs

Open an issue with your operating system and version, the setting, what you expected versus what
happened.

More about me and my work: [isaacadjei.me](https://isaacadjei.me).
