# pwndbg theme: abyss
# use: `theme-switch abyss` inside gdb, or `source <dir>/abyss.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color blue,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color blue

set context-flag-set-color blue,bold
set context-flag-unset-color light-red
set context-flag-value-color light-blue
set context-flag-bracket-color light-gray,bold
set context-flag-changed-color underline
set context-register-color cyan
set context-register-changed-color yellow,bold
set context-register-changed-marker ○

set backtrace-prefix ≫
set backtrace-prefix-color light-red,bold
set backtrace-address-color blue
set backtrace-symbol-color cyan
set backtrace-frame-label-color blue
set backtrace-frame-label

set nearpc-symbol-color light-blue
set nearpc-address-color blue
set nearpc-argument-color cyan
set nearpc-syscall-name-color yellow,bold
set nearpc-prefix ≫
set nearpc-prefix-color blue,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color light-red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b≫
set nearpc-integration-comments-color blue

set memory-stack-color light-cyan
set memory-heap-color yellow
set memory-rodata-color green
set memory-data-color blue
set memory-code-color light-blue
set memory-guard-color blue
set memory-wx-color underline

set disasm-branch-color purple,bold
set disasm-branch-on ◉
set disasm-branch-off ◌

set hexdump-normal-color light-gray
set hexdump-separator-color blue
set hexdump-printable-color cyan
set hexdump-zero-color blue
set hexdump-special-color light-red
set hexdump-offset-color yellow
set hexdump-address-color blue
set hexdump-ascii-block-separator │
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color yellow
set telescope-offset-color blue
set telescope-offset-separator
set telescope-offset-separator-color blue
set telescope-offset-delimiter-color light-red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color purple,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color cyan,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color purple,bold

set enhance-integer-value-color light-blue
set enhance-string-value-color blue
set enhance-comment-color blue
set enhance-unknown-color light-red

set banner-separator ≈
set banner-color cyan
set banner-title-position right
set banner-title-surrounding-left ≈≈[\040
set banner-title-surrounding-right \040]≈≈
set banner-title-color blue,bold

set code-prefix ≫
set code-prefix-color blue,bold

set message-breakpoint-color yellow
set message-debug-color light-blue
set message-error-color light-red
set message-exit-color light-red
set message-hint-color yellow
set message-info-color light-gray
set message-notice-color purple
set message-signal-color light-red,bold
set message-status-off-color light-red
set message-status-on-color blue
set message-success-color blue
set message-system-color light-red
set message-warning-color yellow

set prompt-color cyan,bold
set prompt-alive-color blue,bold
set prop-name-color bold
set prop-title-color blue
set prop-value-color yellow

set go-dump-debug light-blue
set syntax-highlight-style solarized-dark

# vim: ft=gdb
