# pwndbg theme: matrix
# use: `theme-switch matrix` inside gdb, or `source <dir>/matrix.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color light-green,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color green

set context-flag-set-color light-green,bold
set context-flag-unset-color light-red
set context-flag-value-color green
set context-flag-bracket-color green,bold
set context-flag-changed-color underline
set context-register-color green
set context-register-changed-color light-green,bold
set context-register-changed-marker #

set backtrace-prefix >>
set backtrace-prefix-color light-red,bold
set backtrace-address-color green
set backtrace-symbol-color green
set backtrace-frame-label-color light-green
set backtrace-frame-label

set nearpc-symbol-color green
set nearpc-address-color green
set nearpc-argument-color green
set nearpc-syscall-name-color light-green,bold
set nearpc-prefix >>
set nearpc-prefix-color light-green,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color green,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color light-red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b>
set nearpc-integration-comments-color green

set memory-stack-color green
set memory-heap-color light-green
set memory-rodata-color cyan
set memory-data-color gray
set memory-code-color white,bold
set memory-guard-color green
set memory-wx-color underline

set disasm-branch-color green,bold
set disasm-branch-on 1
set disasm-branch-off 0

set hexdump-normal-color green
set hexdump-separator-color green
set hexdump-printable-color green
set hexdump-zero-color green
set hexdump-special-color light-red
set hexdump-offset-color light-green
set hexdump-address-color light-green
set hexdump-ascii-block-separator |
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color light-green
set telescope-offset-color light-green
set telescope-offset-separator
set telescope-offset-separator-color green
set telescope-offset-delimiter-color light-red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color green,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color green,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color green,bold

set enhance-integer-value-color green
set enhance-string-value-color light-green
set enhance-comment-color green
set enhance-unknown-color light-red

set banner-separator ░
set banner-color green
set banner-title-position right
set banner-title-surrounding-left ░▒▓[\040
set banner-title-surrounding-right \040]▓▒░
set banner-title-color light-green,bold

set code-prefix >>
set code-prefix-color light-green,bold

set message-breakpoint-color light-green
set message-debug-color green
set message-error-color light-red
set message-exit-color light-red
set message-hint-color light-green
set message-info-color green
set message-notice-color green
set message-signal-color light-red,bold
set message-status-off-color light-red
set message-status-on-color light-green
set message-success-color light-green
set message-system-color light-red
set message-warning-color light-green

set prompt-color green,bold
set prompt-alive-color light-green,bold
set prop-name-color bold
set prop-title-color light-green
set prop-value-color light-green

set go-dump-debug green
set syntax-highlight-style native

# vim: ft=gdb
