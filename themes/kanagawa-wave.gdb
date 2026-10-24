# pwndbg theme: kanagawa-wave
# use: `theme-switch kanagawa-wave` inside gdb, or `source <dir>/kanagawa-wave.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color light-blue,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color purple

set context-flag-set-color light-blue,bold
set context-flag-unset-color red
set context-flag-value-color cyan
set context-flag-bracket-color light-gray,bold
set context-flag-changed-color underline
set context-register-color purple
set context-register-changed-color yellow,bold
set context-register-changed-marker ✦

set backtrace-prefix ⟩
set backtrace-prefix-color red,bold
set backtrace-address-color purple
set backtrace-symbol-color purple
set backtrace-frame-label-color light-blue
set backtrace-frame-label

set nearpc-symbol-color cyan
set nearpc-address-color purple
set nearpc-argument-color purple
set nearpc-syscall-name-color yellow,bold
set nearpc-prefix ⟩
set nearpc-prefix-color light-blue,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color light-purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b⟩
set nearpc-integration-comments-color purple

set memory-stack-color cyan
set memory-heap-color yellow
set memory-rodata-color green
set memory-data-color light-purple
set memory-code-color light-blue
set memory-guard-color purple
set memory-wx-color underline

set disasm-branch-color light-purple,bold
set disasm-branch-on ◈
set disasm-branch-off ◇

set hexdump-normal-color light-gray
set hexdump-separator-color purple
set hexdump-printable-color purple
set hexdump-zero-color purple
set hexdump-special-color red
set hexdump-offset-color yellow
set hexdump-address-color light-blue
set hexdump-ascii-block-separator │
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color yellow
set telescope-offset-color light-blue
set telescope-offset-separator
set telescope-offset-separator-color purple
set telescope-offset-delimiter-color red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color light-purple,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color purple,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color light-purple,bold

set enhance-integer-value-color cyan
set enhance-string-value-color light-blue
set enhance-comment-color purple
set enhance-unknown-color red

set banner-separator ─
set banner-color purple
set banner-title-position right
set banner-title-surrounding-left ──[\040
set banner-title-surrounding-right \040]──
set banner-title-color light-blue,bold

set code-prefix ⟩
set code-prefix-color light-blue,bold

set message-breakpoint-color yellow
set message-debug-color cyan
set message-error-color red
set message-exit-color red
set message-hint-color yellow
set message-info-color light-gray
set message-notice-color light-purple
set message-signal-color red,bold
set message-status-off-color red
set message-status-on-color light-blue
set message-success-color light-blue
set message-system-color red
set message-warning-color yellow

set prompt-color purple,bold
set prompt-alive-color light-blue,bold
set prop-name-color bold
set prop-title-color light-blue
set prop-value-color yellow

set go-dump-debug cyan
set syntax-highlight-style material

# vim: ft=gdb
