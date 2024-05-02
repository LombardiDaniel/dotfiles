# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$(go env GOPATH)/bin:$PATH

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="bira"

plugins=(
    git
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='vim'
fi

source $HOME/dotfiles/.aliases
source $HOME/dotfiles/.envvars

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#### - Setting keyboard accents for Apple Keyboard -  ####
# > Should be done on boot -> make cronjob?
if [[ "$kernel" == "Linux" ]]; then
    setxkbmap us mac lv3:lalt_switch lv3:ralt_alt
fi

export PATH=$PATH:/usr/local/opt/binutils/bin
export PATH="$(brew --prefix llvm)/bin:${PATH}"

if [ -f "$HOME/.aliases_local" ]; then
    source $HOME/.aliases_local
fi
export PATH=/Users/daniellombardi/bin:$PATH

[[ -e "/Users/daniellombardi/lib/oracle-cli/lib/python3.11/site-packages/oci_cli/bin/oci_autocomplete.sh" ]] && source "/Users/daniellombardi/lib/oracle-cli/lib/python3.11/site-packages/oci_cli/bin/oci_autocomplete.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daniellombardi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daniellombardi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daniellombardi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daniellombardi/google-cloud-sdk/completion.zsh.inc'; fi


# JINA_CLI_BEGIN

## autocomplete
if [[ ! -o interactive ]]; then
    return
fi

compctl -K _jina jina

_jina() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(jina commands)"
  else
    completions="$(jina completions ${words[2,-2]})"
  fi

  reply=(${(ps:
:)completions})
}

# session-wise fix
ulimit -n 4096
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# JINA_CLI_END







