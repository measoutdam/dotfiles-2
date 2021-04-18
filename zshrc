zmodload zsh/zprof
export ZSH=~/.oh-my-zsh
export EDITOR=nvim

[[ -f ~/.aliases.zsh ]] && source ~/.aliases.zsh
[[ -f ~/.env ]] && source ~/.env

# ** ZSH ** #
ZSH_THEME=powerlevel10k/powerlevel10k
DISABLE_UPDATE_PROMPT=true
VSCODE=code-insiders

# ** Environment Paths ** #

export ANDROID_HOME=~/Library/Android/sdk/
export PATH="/bin:/usr/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"

# ** Extra config for nvm ** #
[[ -f ~/.dotfiles/zsh_configs/nvm.zsh ]] && source ~/.dotfiles/zsh_configs/nvm.zsh


# ** Plugins ** #
plugins=(
  ssh-agent          # eval `ssh-agent` - https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
  zsh-syntax-highlighting
  docker
  kubectl
  zsh-autosuggestions
  alias-finder
  common-aliases
  direnv             # the direnv hook. it eqv to: eval "$(direnv hook zsh)"
  jenv               # init jenv:  eval "$(jenv init -)"
  autojump           # This plugin loads the autojbmp navigation tool
  rvm
  zsh_reload         # src
  vscode             # VSCODE=code-insiders, https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vscode
  tmux               # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux
  zsh-docker-aliases # https://github.com/akarzim/zsh-docker-aliases\
  nvm                # nvm auto load, and auto completion
  colored-man-pages
  aws
  # docker-compose
  # terraform
  # git-extras
  # osx
  # vagrant            # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/vagrant
  # thefuck            # use ESC ESC
)

# ** ssh-agent config ** #
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent
# Put these ettings before the line that sources oh-my-zsh
# Work: id_rsa_tw
# Personal: id_rsa
zstyle :omz:plugins:ssh-agent identities id_rsa_tw id_rsa

# ** Fix slowness when paste ** #
[[ -f ~/.dotfiles/zsh_configs/zsh_fix_paste_slowness.zsh ]] && source ~/.dotfiles/zsh_configs/zsh_fix_paste_slowness.zsh

# ** Custom powerlevel 10k ** #
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Start OMZSH
source $ZSH/oh-my-zsh.sh

