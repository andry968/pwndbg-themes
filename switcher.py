"""pwndbg-themes: adds the `theme-switch` command to gdb.

  theme-switch          list themes (* = current)
  theme-switch NAME     apply a theme and remember it
  theme-switch next     cycle to the next theme
  theme-switch random   pick a random theme

The remembered theme is re-applied on every gdb start.
"""
import os
import random

import gdb

try:
    _HERE = os.path.dirname(os.path.abspath(__file__))
except NameError:  # some gdb builds don't define __file__
    _HERE = os.path.expanduser("~/pwndbg/themes")

_STATE = os.path.join(_HERE, ".current")


def _theme_dir():
    sub = os.path.join(_HERE, "themes")
    return sub if os.path.isdir(sub) else _HERE


def _names():
    try:
        return sorted(f[:-4] for f in os.listdir(_theme_dir()) if f.endswith(".gdb"))
    except OSError:
        return []


def _current():
    try:
        with open(_STATE) as fh:
            return fh.read().strip()
    except OSError:
        return ""


def _save(name):
    try:
        with open(_STATE, "w") as fh:
            fh.write(name + "\n")
    except OSError:
        pass


def apply_theme(name):
    """Run a theme file line by line so one bad setting can't abort the rest."""
    path = os.path.join(_theme_dir(), name + ".gdb")
    if not os.path.isfile(path):
        raise gdb.GdbError("unknown theme '%s' (run: theme-switch)" % name)
    ok, bad = 0, []
    with open(path, encoding="utf-8") as fh:
        for raw in fh:
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            try:
                out = gdb.execute(line, to_string=True) or ""
            except gdb.error as exc:
                bad.append((line, str(exc)))
                continue
            if "not found" in out.lower():  # e.g. pwndbg rejects an unknown pygments style
                bad.append((line, out.strip().splitlines()[0]))
            else:
                ok += 1
    return ok, bad


def _refresh():
    try:
        if gdb.selected_inferior().pid:
            gdb.execute("context")
    except gdb.error:
        pass


class ThemeSwitch(gdb.Command):
    """Switch the pwndbg color theme: theme-switch [NAME|next|random]"""

    def __init__(self):
        super(ThemeSwitch, self).__init__("theme-switch", gdb.COMMAND_USER)

    def complete(self, text, word):
        # gdb may pass word=None, so complete from the full arg text instead
        prefix = (text if isinstance(text, str) else (word or "")).strip()
        return [n for n in _names() + ["next", "random"] if n.startswith(prefix)]

    def invoke(self, arg, from_tty):
        arg = arg.strip()
        names = _names()
        if not names:
            raise gdb.GdbError("no themes found in " + _theme_dir())
        cur = _current()
        if not arg:
            for n in names:
                print("%s %s" % ("*" if n == cur else " ", n))
            return
        if arg == "random":
            arg = random.choice([n for n in names if n != cur] or names)
        elif arg == "next":
            arg = names[(names.index(cur) + 1) % len(names)] if cur in names else names[0]
        ok, bad = apply_theme(arg)
        if ok:
            _save(arg)
        note = ", %d skipped" % len(bad) if bad else ""
        print("theme: %s (%d settings applied%s)" % (arg, ok, note))
        for line, err in bad[:5]:
            print("  skipped: %s -> %s" % (line, err))
        _refresh()


ThemeSwitch()


def _autoload():
    name = _current()
    if name and name in _names():
        try:
            ok, bad = apply_theme(name)
        except gdb.GdbError:
            return
        if bad and not ok:
            print("pwndbg-themes: settings rejected; load switcher.py AFTER pwndbg init in ~/.gdbinit")


_autoload()
