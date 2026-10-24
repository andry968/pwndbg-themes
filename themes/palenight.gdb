# pwndbg theme: palenight
# use: `theme-switch palenight` inside gdb, or `source <dir>/palenight.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color light-purple,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color purple

set context-flag-set-color light-purple,bold
set context-flag-unset-color light-red
set context-flag-value-color light-blue
set context-flag-bracket-color light-gray,bold
set context-flag-changed-color underline
set context-register-color cyan
set context-register-changed-color yellow,bold
set context-register-changed-marker ●

set backtrace-prefix ❱
set backtrace-prefix-color light-red,bold
set backtrace-address-color purple
set backtrace-symbol-color cyan
set backtrace-frame-label-color light-purple
set backtrace-frame-label

set nearpc-symbol-color light-blue
set nearpc-address-color purple
set nearpc-argument-color cyan
set nearpc-syscall-name-color yellow,bold
set nearpc-prefix ❱
set nearpc-prefix-color light-purple,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color light-red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b❱
set nearpc-integration-comments-color purple

set memory-stack-color light-blue
set memory-heap-color yellow
set memory-rodata-color green
set memory-data-color purple
set memory-code-color cyan
set memory-guard-color purple
set memory-wx-color underline

set disasm-branch-color purple,bold
set disasm-branch-on ✔
set disasm-branch-off ✘

set hexdump-normal-color light-gray
set hexdump-separator-color purple
set hexdump-printable-color cyan
set hexdump-zero-color purple
set hexdump-special-color light-red
set hexdump-offset-color yellow
set hexdump-address-color light-purple
set hexdump-ascii-block-separator ╎
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color yellow
set telescope-offset-color light-purple
set telescope-offset-separator
set telescope-offset-separator-color purple
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
set enhance-string-value-color light-purple
set enhance-comment-color purple
set enhance-unknown-color light-red

set banner-separator ╌
set banner-color cyan
set banner-title-position right
set banner-title-surrounding-left ╌╌[\040
set banner-title-surrounding-right \040]╌╌
set banner-title-color light-purple,bold

set code-prefix ❱
set code-prefix-color light-purple,bold

set message-breakpoint-color yellow
set message-debug-color light-blue
set message-error-color light-red
set message-exit-color light-red
set message-hint-color yellow
set message-info-color light-gray
set message-notice-color purple
set message-signal-color light-red,bold
set message-status-off-color light-red
set message-status-on-color light-purple
set message-success-color light-purple
set message-system-color light-red
set message-warning-color yellow

set prompt-color cyan,bold
set prompt-alive-color light-purple,bold
set prop-name-color bold
set prop-title-color light-purple
set prop-value-color yellow

set go-dump-debug light-blue
set syntax-highlight-style material

# vim: ft=gdb
