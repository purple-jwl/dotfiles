# 文字コード
export LANG=ja_JP.UTF-8

# パス設定
[[ -d ~/.nodebrew ]] && \
  export PATH=$HOME/.nodebrew/current/bin:$PATH

[[ -d ~/.rbenv ]] && \
  export PATH=$HOME/.rbenv/bin:$PATH && \
  eval "$(rbenv init -)"

[[ -d ~/.phpenv ]] && \
  export PATH=$HOME/.phpenv/bin:$PATH && \
  eval "$(phpenv init -)"

export PATH=/usr/local/sbin:$PATH

# lsの色設定
export LSCOLORS='gxfxcxdxbxegedabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# キーバインド
bindkey -e

# バックグラウンドジョブの状態変化を即時報告
setopt notify

# コマンドをtypoした時に聞き直してくれる
# setopt correct

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
RPROMPT='${vcs_info_msg_0_}'

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
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# aliases
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias l="ls -GF"
alias la="ls -a"
alias ls="ls -GF"
alias ll="ls -la"

alias mkdir="mkdir -p"

alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
