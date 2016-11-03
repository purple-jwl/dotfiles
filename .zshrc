export LANG=ja_JP.UTF-8

# パス設定
[[ -d ~/.nodebrew ]] && \
  export PATH=$HOME/.nodebrew/current/bin:$PATH

[[ -d ~/.rbenv ]] && \
  export PATH=$HOME/.rbenv/bin:$PATH && \
  eval "$(rbenv init -)"

export PATH=/usr/local/sbin:$PATH

# lsの色設定
export LSCOLORS=gxfxcxdxbxegedabagacad

# キーバインド
bindkey -e

# バックグラウンドジョブの状態変化を即時報告
setopt notify

# コマンドをtypoした時に聞き直してくれる
setopt correct

# beepを消す
setopt nolistbeep

# cd -[tab] で移動履歴一覧を表示できる
setopt auto_pushd

# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt share_history

# プロンプト設定
PROMPT="%F{magenta}[%~]%f "

# git branch
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '%F{green}(%b)%f'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'$RPROMPT

# 補完機能
autoload -Uz compinit && compinit
setopt list_packed
zstyle ':completion:*' verbose yes
zstyle ':completion:*' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*:default' list-colors ${(s.:.)LSCOLORS}

# aliases
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias l="ls -GF"
alias la="ls -a"
alias ls="ls -GF"
alias ll="ls -la"

alias mkdir="mkdir -p"
alias history="history -f"

alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias g++='g++ -std=c++0x -O2'

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
