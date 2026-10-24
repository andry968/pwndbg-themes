#!/usr/bin/env bash
# pwndbg-themes uninstaller: removes only the files this repo installed
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${PWNDBG_THEME_DIR:-$HOME/pwndbg/themes}"
GDBINIT="${GDBINIT:-$HOME/.gdbinit}"
BEGIN="# >>> pwndbg-themes >>>"
END="# <<< pwndbg-themes <<<"

[[ "${1:-}" == "-d" || "${1:-}" == "--dir" ]] && DEST="${2:?missing value}"

[[ -f "$GDBINIT" ]] && sed -i "/^$BEGIN\$/,/^$END\$/d" "$GDBINIT" && echo "[-] removed block from $GDBINIT"

shopt -s nullglob
for f in "$SRC"/themes/*.gdb; do rm -f "$DEST/$(basename "$f")"; done
rm -f "$DEST/switcher.py" "$DEST/.current"
rm -rf "$DEST/__pycache__"
rmdir "$DEST" 2>/dev/null || true
echo "[-] removed theme files from $DEST"
