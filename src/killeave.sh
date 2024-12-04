#!/usr/bin/env zsh

# leave コマンドで設定したタイマーを解除するスクリプト
ps -eo pid,stat,lstart,args |
grep -E '[l]eave' |
fzf --reverse |
awk '{print $1}' |
xargs kill
