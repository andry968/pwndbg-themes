# pwndbg theme: dracula
# use: `theme-switch dracula` inside gdb, or `source <dir>/dracula.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color light-purple,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color purple

set context-flag-set-color light-purple,bold
set context-flag-unset-color light-red
set context-flag-value-color light-cyan
set context-flag-bracket-color white,bold
set context-flag-changed-color underline
set context-register-color light-green
set context-register-changed-color light-yellow,bold
set context-register-changed-marker ▲

set backtrace-prefix »
set backtrace-prefix-color light-red,bold
set backtrace-address-color purple
set backtrace-symbol-color light-green
set backtrace-frame-label-color light-purple
set backtrace-frame-label

set nearpc-symbol-color light-cyan
set nearpc-address-color purple
set nearpc-argument-color light-green
set nearpc-syscall-name-color light-yellow,bold
set nearpc-prefix »
set nearpc-prefix-color light-purple,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color light-red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b»
set nearpc-integration-comments-color purple

set memory-stack-color light-cyan
set memory-heap-color light-yellow
set memory-rodata-color light-green
set memory-data-color purple
set memory-code-color light-purple
set memory-guard-color purple
set memory-wx-color underline

set disasm-branch-color purple,bold
set disasm-branch-on ✔
set disasm-branch-off ✘

set hexdump-normal-color white
set hexdump-separator-color purple
set hexdump-printable-color light-green
set hexdump-zero-color purple
set hexdump-special-color light-red
set hexdump-offset-color light-yellow
set hexdump-address-color light-purple
set hexdump-ascii-block-separator ║
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color light-yellow
set telescope-offset-color light-purple
set telescope-offset-separator
set telescope-offset-separator-color purple
set telescope-offset-delimiter-color light-red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color purple,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color light-green,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color purple,bold

set enhance-integer-value-color light-cyan
set enhance-string-value-color light-purple
set enhance-comment-color purple
set enhance-unknown-color light-red

set banner-separator ═
set banner-color light-green
set banner-title-position right
set banner-title-surrounding-left ══[\040
set banner-title-surrounding-right \040]══
set banner-title-color light-purple,bold

set code-prefix »
set code-prefix-color light-purple,bold

set message-breakpoint-color light-yellow
set message-debug-color light-cyan
set message-error-color light-red
set message-exit-color light-red
set message-hint-color light-yellow
set message-info-color white
set message-notice-color purple
set message-signal-color light-red,bold
set message-status-off-color light-red
set message-status-on-color light-purple
set message-success-color light-purple
set message-system-color light-red
set message-warning-color light-yellow

set prompt-color light-green,bold
set prompt-alive-color light-purple,bold
set prop-name-color bold
set prop-title-color light-purple
set prop-value-color light-yellow

set go-dump-debug light-cyan
set syntax-highlight-style dracula

# vim: ft=gdb
