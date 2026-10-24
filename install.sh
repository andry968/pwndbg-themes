#!/usr/bin/env bash
# pwndbg-themes installer (idempotent)
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${PWNDBG_THEME_DIR:-$HOME/pwndbg/themes}"
GDBINIT="${GDBINIT:-$HOME/.gdbinit}"
DEFAULT=""
PATCH=1
BEGIN="# >>> pwndbg-themes >>>"
END="# <<< pwndbg-themes <<<"

usage() {
  cat <<EOF
Usage: ./install.sh [options]
  -d, --dir DIR       install target        (default: \$HOME/pwndbg/themes)
  -t, --default NAME  theme active on next gdb start
      --no-gdbinit    don't modify ~/.gdbinit
  -h, --help          show this help
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -d|--dir)     DEST="${2:?missing value for $1}"; shift 2 ;;
    -t|--default) DEFAULT="${2:?missing value for $1}"; shift 2 ;;
    --no-gdbinit) PATCH=0; shift ;;
    -h|--help)    usage; exit 0 ;;
    *) echo "unknown option: $1" >&2; usage >&2; exit 1 ;;
  esac
done

shopt -s nullglob
files=("$SRC"/themes/*.gdb)
[[ -f "$SRC/switcher.py" && ${#files[@]} -gt 0 ]] || { echo "error: run from the repo root" >&2; exit 1; }
if [[ -n "$DEFAULT" && ! -f "$SRC/themes/$DEFAULT.gdb" ]]; then
  echo "error: unknown theme '$DEFAULT'. available:" >&2
  for f in "${files[@]}"; do basename "$f" .gdb >&2; done
  exit 1
fi

mkdir -p "$DEST"
DEST="$(cd "$DEST" && pwd)"
cp -f "${files[@]}" "$SRC/switcher.py" "$DEST/"
echo "[+] ${#files[@]} themes + switcher.py -> $DEST"

if [[ -n "$DEFAULT" ]]; then
  printf '%s\n' "$DEFAULT" > "$DEST/.current"
  echo "[+] default theme: $DEFAULT"
fi

if (( PATCH )); then
  touch "$GDBINIT"
  [[ -s "$GDBINIT" ]] && cp "$GDBINIT" "$GDBINIT.bak.$(date +%Y%m%d%H%M%S)"
  sed -i "/^$BEGIN\$/,/^$END\$/d" "$GDBINIT"
  grep -q pwndbg "$GDBINIT" || echo "[!] no pwndbg line in $GDBINIT: the switcher must load AFTER pwndbg init"
  { echo; echo "$BEGIN"; echo "source $DEST/switcher.py"; echo "$END"; } >> "$GDBINIT"
  echo "[+] $GDBINIT updated (backup: $GDBINIT.bak.*)"
fi

echo "[done] open gdb and run: theme-switch"
