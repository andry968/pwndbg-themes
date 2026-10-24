# pwndbg theme: everforest
# use: `theme-switch everforest` inside gdb, or `source <dir>/everforest.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color green,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color light-gray

set context-flag-set-color green,bold
set context-flag-unset-color red
set context-flag-value-color cyan
set context-flag-bracket-color white,bold
set context-flag-changed-color underline
set context-register-color yellow
set context-register-changed-color yellow,bold
set context-register-changed-marker ✱

set backtrace-prefix ➤
set backtrace-prefix-color red,bold
set backtrace-address-color light-gray
set backtrace-symbol-color yellow
set backtrace-frame-label-color green
set backtrace-frame-label

set nearpc-symbol-color cyan
set nearpc-address-color light-gray
set nearpc-argument-color yellow
set nearpc-syscall-name-color yellow,bold
set nearpc-prefix ➤
set nearpc-prefix-color green,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color purple,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b➤
set nearpc-integration-comments-color light-gray

set memory-stack-color cyan
set memory-heap-color yellow
set memory-rodata-color green
set memory-data-color purple
set memory-code-color blue
set memory-guard-color light-gray
set memory-wx-color underline

set disasm-branch-color purple,bold
set disasm-branch-on ✔
set disasm-branch-off ✘

set hexdump-normal-color white
set hexdump-separator-color light-gray
set hexdump-printable-color yellow
set hexdump-zero-color light-gray
set hexdump-special-color red
set hexdump-offset-color yellow
set hexdump-address-color green
set hexdump-ascii-block-separator ┊
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color yellow
set telescope-offset-color green
set telescope-offset-separator
set telescope-offset-separator-color light-gray
set telescope-offset-delimiter-color red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color purple,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color yellow,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color purple,bold

set enhance-integer-value-color cyan
set enhance-string-value-color green
set enhance-comment-color light-gray
set enhance-unknown-color red

set banner-separator ┄
set banner-color yellow
set banner-title-position right
set banner-title-surrounding-left ┄┄[\040
set banner-title-surrounding-right \040]┄┄
set banner-title-color green,bold

set code-prefix ➤
set code-prefix-color green,bold

set message-breakpoint-color yellow
set message-debug-color cyan
set message-error-color red
set message-exit-color red
set message-hint-color yellow
set message-info-color white
set message-notice-color purple
set message-signal-color red,bold
set message-status-off-color red
set message-status-on-color green
set message-success-color green
set message-system-color red
set message-warning-color yellow

set prompt-color yellow,bold
set prompt-alive-color green,bold
set prop-name-color bold
set prop-title-color green
set prop-value-color yellow

set go-dump-debug cyan
set syntax-highlight-style gruvbox-dark

# vim: ft=gdb
