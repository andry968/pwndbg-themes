# pwndbg theme: noir
# use: `theme-switch noir` inside gdb, or `source <dir>/noir.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color white,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color light-gray

set context-flag-set-color white,bold
set context-flag-unset-color light-red
set context-flag-value-color light-gray
set context-flag-bracket-color white,bold
set context-flag-changed-color underline
set context-register-color light-gray
set context-register-changed-color white,bold
set context-register-changed-marker •

set backtrace-prefix ▸
set backtrace-prefix-color light-red,bold
set backtrace-address-color light-gray
set backtrace-symbol-color light-gray
set backtrace-frame-label-color white
set backtrace-frame-label

set nearpc-symbol-color light-gray
set nearpc-address-color light-gray
set nearpc-argument-color light-gray
set nearpc-syscall-name-color white,bold
set nearpc-prefix ▸
set nearpc-prefix-color white,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color light-gray,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color light-red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b▸
set nearpc-integration-comments-color light-gray

set memory-stack-color light-gray
set memory-heap-color white
set memory-rodata-color gray
set memory-data-color gray
set memory-code-color white,bold
set memory-guard-color light-gray
set memory-wx-color underline

set disasm-branch-color light-gray,bold
set disasm-branch-on ●
set disasm-branch-off ○

set hexdump-normal-color white
set hexdump-separator-color light-gray
set hexdump-printable-color light-gray
set hexdump-zero-color light-gray
set hexdump-special-color light-red
set hexdump-offset-color white
set hexdump-address-color white
set hexdump-ascii-block-separator │
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color white
set telescope-offset-color white
set telescope-offset-separator
set telescope-offset-separator-color light-gray
set telescope-offset-delimiter-color light-red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color light-gray,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color light-gray,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color light-gray,bold

set enhance-integer-value-color light-gray
set enhance-string-value-color white
set enhance-comment-color light-gray
set enhance-unknown-color light-red

set banner-separator ─
set banner-color light-gray
set banner-title-position right
set banner-title-surrounding-left ──[\040
set banner-title-surrounding-right \040]──
set banner-title-color white,bold

set code-prefix ▸
set code-prefix-color white,bold

set message-breakpoint-color white
set message-debug-color light-gray
set message-error-color light-red
set message-exit-color light-red
set message-hint-color white
set message-info-color white
set message-notice-color light-gray
set message-signal-color light-red,bold
set message-status-off-color light-red
set message-status-on-color white
set message-success-color white
set message-system-color light-red
set message-warning-color white

set prompt-color light-gray,bold
set prompt-alive-color white,bold
set prop-name-color bold
set prop-title-color white
set prop-value-color white

set go-dump-debug light-gray
set syntax-highlight-style zenburn

# vim: ft=gdb
