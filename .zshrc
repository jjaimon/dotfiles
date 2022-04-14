# uncomment to profile prompt startup with zprof
# zmodload zsh/zprof

# history
SAVEHIST=100000

# vim bindings
bindkey -v

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

fpath=( "$HOME/.zfunctions" $fpath )
# For servers where I use screen
screen_promt() {
	[ -z "$WINDOW" ]  || echo  "S"$WINDOW
}
POWERLEVEL9K_CUSTOM_SCREEN_NUMBER="screen_promt"
DEFAULT_FOREGROUND=006 
DEFAULT_BACKGROUND=235
DEFAULT_COLOR=$DEFAULT_FOREGROUND

#  >> POWERLEVEL9K_PROMPT variables
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_DIR_HOME_BACKGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="$DEFAULT_BACKGROUND"

# POWERLEVEL9K_STATUS_OK_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
# POWERLEVEL9K_STATUS_OK_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_STATUS_OK_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

# POWERLEVEL9K_STATUS_ERROR_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
# POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

# POWERLEVEL9K_HISTORY_FOREGROUND="$DEFAULT_FOREGROUND"

# POWERLEVEL9K_TIME_FORMAT="%D{%T \uF017}" #  15:29:33
# POWERLEVEL9K_TIME_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_TIME_BACKGROUND="$DEFAULT_BACKGROUND"

# POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="yellow"
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="magenta"
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$DEFAULT_BACKGROUND"

# POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_EXECUTION_TIME_ICON="\u23F1"

# POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="magenta"
# POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
# POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
# #POWERLEVEL9K_ROOT_ICON=$'\uFF03' # ＃
# POWERLEVEL9K_ROOT_ICON=$'\uF198'  # 

# POWERLEVEL9K_SSH_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_SSH_FOREGROUND="yellow"
# POWERLEVEL9K_SSH_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
# POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"
# POWERLEVEL9K_SSH_ICON="\uF489"  # 

# POWERLEVEL9K_HOST_LOCAL_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_HOST_LOCAL_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_HOST_REMOTE_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_HOST_REMOTE_BACKGROUND="$DEFAULT_BACKGROUND"

# POWERLEVEL9K_HOST_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_HOST_ICON_BACKGROUND="$DEFAULT_BACKGROUND"
# POWERLEVEL9K_HOST_ICON="\uF109" # 

# POWERLEVEL9K_OS_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
# POWERLEVEL9K_OS_ICON_BACKGROUND="$DEFAULT_BACKGROUND"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context os_icon ssh custom_screen_number  root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time history time)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# To differentiate aliases from other command types
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

# To have paths colored instead of underlined
ZSH_HIGHLIGHT_STYLES[isearch]='fg=cyan'


# antigen time!
echo "Loading antigen.zsh"
# Workaround for a antigen cache fails to initialize problem
rm -f .antigen/* > /dev/null 2>&1
# brew install antigen
source $(brew --prefix)/share/antigen/antigen.zsh
######################################################################
### install some antigen bundles

local b="antigen-bundle"

antigen-use oh-my-zsh
# Don't load the oh-my-zsh's library. Takes too long. No need.
	# antigen use oh-my-zsh

# Guess what to install when running an unknown command.
$b command-not-found
$b git
if [[ $OSTYPE = "darwin"* ]]; then
	$b macos
fi
# Helper for extracting different types of archives.
$b extract

# atom editor
#$b atom

# homebrew  - autocomplete on `brew install`
$b brew
$b brew-cask

# Tracks your most used directories, based on 'frecency'.
$b robbyrussell/oh-my-zsh plugins/z

# nicoulaj's moar completion files for zsh -- not sure why disabled.
# $b zsh-users/zsh-completions src

# Syntax highlighting on the readline
$b zsh-users/zsh-syntax-highlighting

# history search
$b zsh-users/zsh-history-substring-search #./zsh-history-substring-search.zsh

# suggestions
$b tarruda/zsh-autosuggestions

# colors for all files!
$b trapd00r/zsh-syntax-highlighting-filetypes

# dont set a theme, because pure does it all
$b mafredri/zsh-async
$b sindresorhus/pure
$b poetry

antigen theme bhilburn/powerlevel9k powerlevel9k
#antigen-theme agnoster
# Tell antigen that you're done.
antigen apply

###
#################################################################################################



# bind UP and DOWN arrow keys for history search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export PURE_GIT_UNTRACKED_DIRTY=0

# Automatically list directory contents on `cd`.
auto-ls () {
	emulate -L zsh;
	# explicit sexy ls'ing as aliases arent honored in here.
	hash gls >/dev/null 2>&1 && CLICOLOR_FORCE=1 gls -aFh --color --group-directories-first || ls
}
chpwd_functions=( auto-ls $chpwd_functions )


# Enable autosuggestions automatically
# zle-line-init() {
#     zle autosuggest-start
# }

# zle -N zle-line-init


# history mgmt
# http://www.refining-linux.org/archives/49/ZSH-Gem-15-Shared-history/
setopt inc_append_history
setopt share_history


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# uncomment to finish profiling
# zprof

DEFAULT_USER=$USER

# Load default dotfiles
source ~/.bash_profile


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

. "/Users/jaimonjose/.acme.sh/acme.sh.env"

# LS colors
export LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Syntax highlight less output. brew install source-highlight
LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS=' -R -X -F '
widgetzip() {
  zip -r $1.zip $1 -x "**/.*" -x "**/__MACOSX"
}
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
md-view() {
  pandoc $1 | lynx -stdin
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jaimonjose/work/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jaimonjose/work/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jaimonjose/work/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jaimonjose/work/google-cloud-sdk/completion.zsh.inc'; fi
