# pwndbg-themes

16 fully customized [pwndbg](https://github.com/pwndbg/pwndbg) themes, a `theme-switch` command, and an installer.

## Install

```bash
chmod +x install.sh
./install.sh
```

The installer copies the themes and `switcher.py` to the target dir and appends one `source` line to `~/.gdbinit` (backup first, safe to re-run).

| Option | Meaning |
|---|---|
| `-d, --dir DIR` | install target (default `~/pwndbg/themes`, or `$PWNDBG_THEME_DIR`) |
| `-t, --default NAME` | theme active on next gdb start |
| `--no-gdbinit` | skip editing `~/.gdbinit` |

## Use

```
theme-switch            list themes
theme-switch nord       apply + remember
theme-switch next       cycle
theme-switch random     surprise me
```

Tab completion works. The last theme is re-applied on every gdb start.

## Themes

| Name | Vibe |
|---|---|
| midnight-grove | soft teal/green, low contrast |
| emberlight | warm yellow/red, gruvbox-ish |
| tokyo-night | blue/purple |
| dracula | light-purple + green |
| nord | cold cyan/blue |
| matrix | all green, binary branch markers |
| everforest | green + yellow, calm |
| kanagawa-wave | light-blue/purple, painting-like |
| gold | yellow/gold on dark, warm and rich |
| noir | monochrome white/gray, red only for errors |
| sakura | soft pink and white |
| abyss | deep sea blue |
| cyberpunk | neon yellow + cyan + magenta |
| palenight | soft purple-blue, low contrast |
| zenburn | warm gray, classic low contrast |
| synthwave | neon pink-blue retro |

## Notes

- pwndbg only understands the 16 ANSI color names, so the real palette comes from your **terminal theme**. Pair each theme with the matching terminal scheme.
- Disassembly colors (mnemonics/operands) come from the Pygments style set by `syntax-highlight-style` (not ANSI), so they follow each theme's style: `native`, `gruvbox-dark`, `one-dark`, `dracula`, `nord`, `material`, `monokai`, `zenburn`, `paraiso-dark`, `solarized-dark`, `fruity`. An unknown style makes pwndbg revert to `monokai`; `theme-switch` reports that as skipped.
- Addresses in executable memory (call targets, libc/plt, backtrace) use `memory-code-color`; each theme sets its own, tweak with `set memory-code-color light-blue`.
- Quiet text (addresses, comments) uses a visible `mute` color, never ANSI `gray` (90), which is nearly invisible on many terminals.
- Quotes are literal in gdb string settings, so themes are written without them (`\040` = space at the edges).
- Exception: in emulation mode pwndbg hardcodes `gray` for the instructions above PC. That color is your terminal's *bright black*; brighten it in the terminal palette.
- Themes are applied line by line, so one invalid setting never aborts the rest.
- `switcher.py` must load **after** pwndbg initializes (the installer appends to the end of `~/.gdbinit`).

## Uninstall

```bash
./uninstall.sh   # removes only files installed by this repo + the .gdbinit block
```
