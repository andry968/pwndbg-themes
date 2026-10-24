# pwndbg theme: emberlight
# use: `theme-switch emberlight` inside gdb, or `source <dir>/emberlight.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color yellow,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color light-gray

set context-flag-set-color yellow,bold
set context-flag-unset-color red
set context-flag-value-color cyan
set context-flag-bracket-color white,bold
set context-flag-changed-color underline
set context-register-color light-red
set context-register-changed-color light-yellow,bold
set context-register-changed-marker ◆

set backtrace-prefix ▶
set backtrace-prefix-color red,bold
set backtrace-address-color light-gray
set backtrace-symbol-color light-red
set backtrace-frame-label-color yellow
set backtrace-frame-label

set nearpc-symbol-color cyan
set nearpc-address-color light-gray
set nearpc-argument-color light-red
set nearpc-syscall-name-color light-yellow,bold
set nearpc-prefix ▶
set nearpc-prefix-color yellow,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b▶
set nearpc-integration-comments-color light-gray

set memory-stack-color cyan
set memory-heap-color light-red
set memory-rodata-color green
set memory-data-color purple
set memory-code-color yellow
set memory-guard-color light-gray
set memory-wx-color underline

set disasm-branch-color purple,bold
set disasm-branch-on ▲
set disasm-branch-off ▼

set hexdump-normal-color white
set hexdump-separator-color light-gray
set hexdump-printable-color light-red
set hexdump-zero-color light-gray
set hexdump-special-color red
set hexdump-offset-color light-yellow
set hexdump-address-color yellow
set hexdump-ascii-block-separator ┃
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color light-yellow
set telescope-offset-color yellow
set telescope-offset-separator
set telescope-offset-separator-color light-gray
set telescope-offset-delimiter-color red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color purple,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color light-red,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color purple,bold

set enhance-integer-value-color cyan
set enhance-string-value-color yellow
set enhance-comment-color light-gray
set enhance-unknown-color red

set banner-separator ━
set banner-color light-red
set banner-title-position right
set banner-title-surrounding-left ━━[\040
set banner-title-surrounding-right \040]━━
set banner-title-color yellow,bold

set code-prefix ▶
set code-prefix-color yellow,bold

set message-breakpoint-color light-yellow
set message-debug-color cyan
set message-error-color red
set message-exit-color red
set message-hint-color light-yellow
set message-info-color white
set message-notice-color purple
set message-signal-color red,bold
set message-status-off-color red
set message-status-on-color yellow
set message-success-color yellow
set message-system-color red
set message-warning-color light-yellow

set prompt-color light-red,bold
set prompt-alive-color yellow,bold
set prop-name-color bold
set prop-title-color yellow
set prop-value-color light-yellow

set go-dump-debug cyan
set syntax-highlight-style gruvbox-dark

# vim: ft=gdb
