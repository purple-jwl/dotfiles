# 文字コード
export LANG=ja_JP.UTF-8

# パス設定
export PATH=/usr/local/sbin:$PATH

[[ -d ~/.nodebrew ]] && \
  export PATH=$HOME/.nodebrew/current/bin:$PATH

[[ -d ~/.rbenv ]] && \
  export PATH=$HOME/.rbenv/bin:$PATH && \
  eval "$(rbenv init -)"

# lsの色設定
export LSCOLORS='gxfxcxdxbxegedabagacad'
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# キーバインド
bindkey -e

# バックグラウンドジョブの状態変化を即時報告
setopt notify

# beepを消す
setopt nolistbeep

# cd -[tab] で移動履歴一覧を表示できる
setopt auto_pushd

# 履歴
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt extended_history
setopt share_history
setopt hist_ignore_space

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

alias g='git'

alias gh='cd $(ghq root)/$(ghq list | peco)'

alias dc='docker-compose'

# historyからコマンドを選択できるようにする
function peco-select-history() {
    BUFFER=$(history -nr 1 | awk '!a[$0]++' | peco --query "$LBUFFER")
    CURSOR=$#BUFFER
}
zle -N peco-select-history # 関数をwidgetに登録
bindkey '^r' peco-select-history
