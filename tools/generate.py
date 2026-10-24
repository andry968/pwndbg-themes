#!/usr/bin/env python3
"""Regenerate themes/*.gdb from the palettes below. Edit a palette, run this, done.

  python3 tools/generate.py
"""
import os

OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "themes")
AL, AR = "◂—", "—▸"  # chain arrows, same in every theme

# c   = role palette (ANSI names only, pwndbg has no hex support)
#       mute = quiet-but-visible color for addresses/comments (never plain 'gray': ANSI 90 is too dark)
# mem = memory-region colors (code = call targets, libc/plt, backtrace addresses)
T = {
"midnight-grove": dict(c=dict(acc="cyan", acc2="green", warn="yellow", err="light-red", info="blue", note="purple", mute="blue", text="light-gray"),
    mem=dict(stack="blue", heap="yellow", rodata="green", data="purple", code="cyan"),
    pfx="➜", sep="┈", sl="┈┈[ ", sr=" ]┈┈", on="✔", off="✘", mk="*", hb="│", sh="native"),
"emberlight": dict(c=dict(acc="yellow", acc2="light-red", warn="light-yellow", err="red", info="cyan", note="purple", mute="light-gray", text="white"),
    mem=dict(stack="cyan", heap="light-red", rodata="green", data="purple", code="yellow"),
    pfx="▶", sep="━", sl="━━[ ", sr=" ]━━", on="▲", off="▼", mk="◆", hb="┃", sh="gruvbox-dark"),
"tokyo-night": dict(c=dict(acc="blue", acc2="light-purple", warn="yellow", err="light-red", info="cyan", note="purple", mute="blue", text="light-gray"),
    mem=dict(stack="cyan", heap="yellow", rodata="green", data="purple", code="light-blue"),
    pfx="❯", sep="─", sl="──[ ", sr=" ]──", on="✓", off="✗", mk="●", hb="┆", sh="one-dark"),
"dracula": dict(c=dict(acc="light-purple", acc2="light-green", warn="light-yellow", err="light-red", info="light-cyan", note="purple", mute="purple", text="white"),
    mem=dict(stack="light-cyan", heap="light-yellow", rodata="light-green", data="purple", code="light-purple"),
    pfx="»", sep="═", sl="══[ ", sr=" ]══", on="✔", off="✘", mk="▲", hb="║", sh="dracula"),
"nord": dict(c=dict(acc="cyan", acc2="blue", warn="yellow", err="red", info="light-cyan", note="purple", mute="blue", text="light-gray"),
    mem=dict(stack="blue", heap="yellow", rodata="cyan", data="purple", code="light-cyan"),
    pfx="→", sep="─", sl="─[ ", sr=" ]─", on="✓", off="✗", mk="◉", hb="¦", sh="nord"),
"matrix": dict(c=dict(acc="light-green", acc2="green", warn="light-green", err="light-red", info="green", note="green", mute="green", text="green"),
    mem=dict(stack="green", heap="light-green", rodata="cyan", data="gray", code="white,bold"),
    pfx=">>", sep="░", sl="░▒▓[ ", sr=" ]▓▒░", on="1", off="0", mk="#", hb="|", sh="native"),
"everforest": dict(c=dict(acc="green", acc2="yellow", warn="yellow", err="red", info="cyan", note="purple", mute="light-gray", text="white"),
    mem=dict(stack="cyan", heap="yellow", rodata="green", data="purple", code="blue"),
    pfx="➤", sep="┄", sl="┄┄[ ", sr=" ]┄┄", on="✔", off="✘", mk="✱", hb="┊", sh="gruvbox-dark"),
"kanagawa-wave": dict(c=dict(acc="light-blue", acc2="purple", warn="yellow", err="red", info="cyan", note="light-purple", mute="purple", text="light-gray"),
    mem=dict(stack="cyan", heap="yellow", rodata="green", data="light-purple", code="light-blue"),
    pfx="⟩", sep="─", sl="──[ ", sr=" ]──", on="◈", off="◇", mk="✦", hb="│", sh="material"),
"gold": dict(c=dict(acc="light-yellow", acc2="yellow", warn="light-yellow", err="light-red", info="white", note="yellow", mute="yellow", text="light-gray"),
    mem=dict(stack="white", heap="yellow", rodata="light-gray", data="gray", code="light-yellow,bold"),
    pfx="✦", sep="─", sl="─✦[ ", sr=" ]✦─", on="✔", off="✘", mk="✦", hb="┇", sh="monokai"),
"noir": dict(c=dict(acc="white", acc2="light-gray", warn="white", err="light-red", info="light-gray", note="light-gray", mute="light-gray", text="white"),
    mem=dict(stack="light-gray", heap="white", rodata="gray", data="gray", code="white,bold"),
    pfx="▸", sep="─", sl="──[ ", sr=" ]──", on="●", off="○", mk="•", hb="│", sh="zenburn"),
"sakura": dict(c=dict(acc="light-purple", acc2="light-red", warn="light-yellow", err="red", info="light-cyan", note="purple", mute="purple", text="white"),
    mem=dict(stack="light-cyan", heap="light-yellow", rodata="light-green", data="purple", code="light-purple"),
    pfx="❀", sep="─", sl="─❀[ ", sr=" ]❀─", on="✿", off="❁", mk="❀", hb="┊", sh="paraiso-dark"),
"abyss": dict(c=dict(acc="blue", acc2="cyan", warn="yellow", err="light-red", info="light-blue", note="purple", mute="blue", text="light-gray"),
    mem=dict(stack="light-cyan", heap="yellow", rodata="green", data="blue", code="light-blue"),
    pfx="≫", sep="≈", sl="≈≈[ ", sr=" ]≈≈", on="◉", off="◌", mk="○", hb="│", sh="solarized-dark"),
"cyberpunk": dict(c=dict(acc="light-yellow", acc2="light-cyan", warn="light-yellow", err="light-red", info="light-cyan", note="light-purple", mute="purple", text="white"),
    mem=dict(stack="light-cyan", heap="light-purple", rodata="light-green", data="purple", code="light-yellow,bold"),
    pfx="⟫", sep="━", sl="━▌[ ", sr=" ]▐━", on="◆", off="◇", mk="▮", hb="┃", sh="monokai"),
"palenight": dict(c=dict(acc="light-purple", acc2="cyan", warn="yellow", err="light-red", info="light-blue", note="purple", mute="purple", text="light-gray"),
    mem=dict(stack="light-blue", heap="yellow", rodata="green", data="purple", code="cyan"),
    pfx="❱", sep="╌", sl="╌╌[ ", sr=" ]╌╌", on="✔", off="✘", mk="●", hb="╎", sh="material"),
"zenburn": dict(c=dict(acc="green", acc2="yellow", warn="yellow", err="red", info="cyan", note="purple", mute="light-gray", text="white"),
    mem=dict(stack="cyan", heap="yellow", rodata="green", data="purple", code="blue"),
    pfx="►", sep="─", sl="─[ ", sr=" ]─", on="✓", off="✗", mk="*", hb="│", sh="zenburn"),
"synthwave": dict(c=dict(acc="light-purple", acc2="light-cyan", warn="light-yellow", err="light-red", info="light-blue", note="purple", mute="purple", text="white"),
    mem=dict(stack="light-cyan", heap="light-yellow", rodata="cyan", data="purple", code="light-purple,bold"),
    pfx="▷", sep="─", sl="◢◤[ ", sr=" ]◥◣", on="▲", off="▼", mk="✧", hb="┃", sh="fruity"),
}


def esc(s):
    """gdb keeps quotes literally and trims edge spaces, so write them as \040."""
    lead = len(s) - len(s.lstrip(" "))
    trail = len(s) - len(s.rstrip(" "))
    return "\\040" * lead + s.strip(" ") + "\\040" * trail


def build(n, d):
    c, m = d["c"], d["mem"]
    B = lambda k: c[k] + ",bold"
    return f"""# pwndbg theme: {n}
# use: `theme-switch {n}` inside gdb, or `source <dir>/{n}.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color {B('acc')}
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color {c['mute']}

set context-flag-set-color {B('acc')}
set context-flag-unset-color {c['err']}
set context-flag-value-color {c['info']}
set context-flag-bracket-color {c['text']},bold
set context-flag-changed-color underline
set context-register-color {c['acc2']}
set context-register-changed-color {B('warn')}
set context-register-changed-marker {d['mk']}

set backtrace-prefix {d['pfx']}
set backtrace-prefix-color {B('err')}
set backtrace-address-color {c['mute']}
set backtrace-symbol-color {c['acc2']}
set backtrace-frame-label-color {c['acc']}
set backtrace-frame-label

set nearpc-symbol-color {c['info']}
set nearpc-address-color {c['mute']}
set nearpc-argument-color {c['acc2']}
set nearpc-syscall-name-color {B('warn')}
set nearpc-prefix {d['pfx']}
set nearpc-prefix-color {B('acc')}
set nearpc-branch-marker \\040\\040\\040\\040↓
set nearpc-branch-marker-color {B('note')}
set nearpc-branch-marker-contiguous \\040
set nearpc-breakpoint-color {c['err']}
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b{d['pfx'][-1]}
set nearpc-integration-comments-color {c['mute']}

set memory-stack-color {m['stack']}
set memory-heap-color {m['heap']}
set memory-rodata-color {m['rodata']}
set memory-data-color {m['data']}
set memory-code-color {m['code']}
set memory-guard-color {c['mute']}
set memory-wx-color underline

set disasm-branch-color {B('note')}
set disasm-branch-on {d['on']}
set disasm-branch-off {d['off']}

set hexdump-normal-color {c['text']}
set hexdump-separator-color {c['mute']}
set hexdump-printable-color {c['acc2']}
set hexdump-zero-color {c['mute']}
set hexdump-special-color {c['err']}
set hexdump-offset-color {c['warn']}
set hexdump-address-color {c['acc']}
set hexdump-ascii-block-separator {d['hb']}
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color {c['warn']}
set telescope-offset-color {c['acc']}
set telescope-offset-separator
set telescope-offset-separator-color {c['mute']}
set telescope-offset-delimiter-color {c['err']}
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color {B('note')}

set chain-arrow-left {AL}
set chain-arrow-right {AR}
set chain-arrow-color {B('acc2')}
set chain-contiguous-marker ...
set chain-contiguous-marker-color {B('note')}

set enhance-integer-value-color {c['info']}
set enhance-string-value-color {c['acc']}
set enhance-comment-color {c['mute']}
set enhance-unknown-color {c['err']}

set banner-separator {d['sep']}
set banner-color {c['acc2']}
set banner-title-position right
set banner-title-surrounding-left {esc(d['sl'])}
set banner-title-surrounding-right {esc(d['sr'])}
set banner-title-color {B('acc')}

set code-prefix {d['pfx']}
set code-prefix-color {B('acc')}

set message-breakpoint-color {c['warn']}
set message-debug-color {c['info']}
set message-error-color {c['err']}
set message-exit-color {c['err']}
set message-hint-color {c['warn']}
set message-info-color {c['text']}
set message-notice-color {c['note']}
set message-signal-color {B('err')}
set message-status-off-color {c['err']}
set message-status-on-color {c['acc']}
set message-success-color {c['acc']}
set message-system-color {c['err']}
set message-warning-color {c['warn']}

set prompt-color {B('acc2')}
set prompt-alive-color {B('acc')}
set prop-name-color bold
set prop-title-color {c['acc']}
set prop-value-color {c['warn']}

set go-dump-debug {c['info']}
set syntax-highlight-style {d['sh']}

# vim: ft=gdb
"""


if __name__ == "__main__":
    os.makedirs(OUT, exist_ok=True)
    for name, d in T.items():
        with open(os.path.join(OUT, name + ".gdb"), "w", encoding="utf-8") as fh:
            fh.write(build(name, d))
    print("generated %d themes -> %s" % (len(T), os.path.normpath(OUT)))
