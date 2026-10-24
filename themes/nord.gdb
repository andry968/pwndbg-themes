# pwndbg theme: nord
# use: `theme-switch nord` inside gdb, or `source <dir>/nord.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color cyan,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color blue

set context-flag-set-color cyan,bold
set context-flag-unset-color red
set context-flag-value-color light-cyan
set context-flag-bracket-color light-gray,bold
set context-flag-changed-color underline
set context-register-color blue
set context-register-changed-color yellow,bold
set context-register-changed-marker ◉

set backtrace-prefix →
set backtrace-prefix-color red,bold
set backtrace-address-color blue
set backtrace-symbol-color blue
set backtrace-frame-label-color cyan
set backtrace-frame-label

set nearpc-symbol-color light-cyan
set nearpc-address-color blue
set nearpc-argument-color blue
set nearpc-syscall-name-color yellow,bold
set nearpc-prefix →
set nearpc-prefix-color cyan,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b→
set nearpc-integration-comments-color blue

set memory-stack-color blue
set memory-heap-color yellow
set memory-rodata-color cyan
set memory-data-color purple
set memory-code-color light-cyan
set memory-guard-color blue
set memory-wx-color underline

set disasm-branch-color purple,bold
set disasm-branch-on ✓
set disasm-branch-off ✗

set hexdump-normal-color light-gray
set hexdump-separator-color blue
set hexdump-printable-color blue
set hexdump-zero-color blue
set hexdump-special-color red
set hexdump-offset-color yellow
set hexdump-address-color cyan
set hexdump-ascii-block-separator ¦
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color yellow
set telescope-offset-color cyan
set telescope-offset-separator
set telescope-offset-separator-color blue
set telescope-offset-delimiter-color red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color purple,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color blue,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color purple,bold

set enhance-integer-value-color light-cyan
set enhance-string-value-color cyan
set enhance-comment-color blue
set enhance-unknown-color red

set banner-separator ─
set banner-color blue
set banner-title-position right
set banner-title-surrounding-left ─[\040
set banner-title-surrounding-right \040]─
set banner-title-color cyan,bold

set code-prefix →
set code-prefix-color cyan,bold

set message-breakpoint-color yellow
set message-debug-color light-cyan
set message-error-color red
set message-exit-color red
set message-hint-color yellow
set message-info-color light-gray
set message-notice-color purple
set message-signal-color red,bold
set message-status-off-color red
set message-status-on-color cyan
set message-success-color cyan
set message-system-color red
set message-warning-color yellow

set prompt-color blue,bold
set prompt-alive-color cyan,bold
set prop-name-color bold
set prop-title-color cyan
set prop-value-color yellow

set go-dump-debug light-cyan
set syntax-highlight-style nord

# vim: ft=gdb
