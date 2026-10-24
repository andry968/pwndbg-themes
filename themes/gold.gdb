# pwndbg theme: gold
# use: `theme-switch gold` inside gdb, or `source <dir>/gold.gdb` AFTER pwndbg init
# note: pwndbg only knows ANSI colors; the real palette comes from your terminal theme

set highlight-color light-yellow,bold
set highlight-pc yes
set highlight-source yes
set highlight-breakpoints yes
set comment-color yellow

set context-flag-set-color light-yellow,bold
set context-flag-unset-color light-red
set context-flag-value-color white
set context-flag-bracket-color light-gray,bold
set context-flag-changed-color underline
set context-register-color yellow
set context-register-changed-color light-yellow,bold
set context-register-changed-marker ✦

set backtrace-prefix ✦
set backtrace-prefix-color light-red,bold
set backtrace-address-color yellow
set backtrace-symbol-color yellow
set backtrace-frame-label-color light-yellow
set backtrace-frame-label

set nearpc-symbol-color white
set nearpc-address-color yellow
set nearpc-argument-color yellow
set nearpc-syscall-name-color light-yellow,bold
set nearpc-prefix ✦
set nearpc-prefix-color light-yellow,bold
set nearpc-branch-marker \040\040\040\040↓
set nearpc-branch-marker-color yellow,bold
set nearpc-branch-marker-contiguous \040
set nearpc-breakpoint-color light-red
set nearpc-breakpoint-prefix b+
set nearpc-current-breakpoint-prefix b✦
set nearpc-integration-comments-color yellow

set memory-stack-color white
set memory-heap-color yellow
set memory-rodata-color light-gray
set memory-data-color gray
set memory-code-color light-yellow,bold
set memory-guard-color yellow
set memory-wx-color underline

set disasm-branch-color yellow,bold
set disasm-branch-on ✔
set disasm-branch-off ✘

set hexdump-normal-color light-gray
set hexdump-separator-color yellow
set hexdump-printable-color yellow
set hexdump-zero-color yellow
set hexdump-special-color light-red
set hexdump-offset-color light-yellow
set hexdump-address-color light-yellow
set hexdump-ascii-block-separator ┇
set hexdump-colorize-ascii yes
set hexdump-highlight-group-lsb underline

set telescope-register-color light-yellow
set telescope-offset-color light-yellow
set telescope-offset-separator
set telescope-offset-separator-color yellow
set telescope-offset-delimiter-color light-red
set telescope-offset-delimiter :
set telescope-repeating-marker ... ↓
set telescope-repeating-marker-color yellow,bold

set chain-arrow-left ◂—
set chain-arrow-right —▸
set chain-arrow-color yellow,bold
set chain-contiguous-marker ...
set chain-contiguous-marker-color yellow,bold

set enhance-integer-value-color white
set enhance-string-value-color light-yellow
set enhance-comment-color yellow
set enhance-unknown-color light-red

set banner-separator ─
set banner-color yellow
set banner-title-position right
set banner-title-surrounding-left ─✦[\040
set banner-title-surrounding-right \040]✦─
set banner-title-color light-yellow,bold

set code-prefix ✦
set code-prefix-color light-yellow,bold

set message-breakpoint-color light-yellow
set message-debug-color white
set message-error-color light-red
set message-exit-color light-red
set message-hint-color light-yellow
set message-info-color light-gray
set message-notice-color yellow
set message-signal-color light-red,bold
set message-status-off-color light-red
set message-status-on-color light-yellow
set message-success-color light-yellow
set message-system-color light-red
set message-warning-color light-yellow

set prompt-color yellow,bold
set prompt-alive-color light-yellow,bold
set prop-name-color bold
set prop-title-color light-yellow
set prop-value-color light-yellow

set go-dump-debug white
set syntax-highlight-style monokai

# vim: ft=gdb
