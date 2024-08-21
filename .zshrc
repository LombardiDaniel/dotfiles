# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$(go env GOPATH)/bin:$PATH

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"
# ZSH_THEME="bira"


CATPPUCCIN_THEME=catppuccin_frappe-zsh-syntax-highlighting.zsh
source ~/.zsh/$CATPPUCCIN_THEME

plugins=(
    git
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

prompt_context() {
    prompt_segment black default "$USER"
}


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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daniellombardi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daniellombardi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daniellombardi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daniellombardi/google-cloud-sdk/completion.zsh.inc'; fi








source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
