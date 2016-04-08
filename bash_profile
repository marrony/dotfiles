export TERM=xterm-256color
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export ANDROID_NDK=~/Development/android-ndk-r9b/
export ANDROID_SDK=~/Development/android-sdk-macosx/

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-prompt.sh
source ~/.git-completion.sh

#if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion
#fi

#export CLICOLOR=1
#export LSCOLORS=GxFxCxDxBxegedabagaced
#export PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(__git_ps1)\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH=$PATH:$HOME/.rvm/bin


##
# Your previous /Users/mneris/.bash_profile file was backed up as /Users/mneris/.bash_profile.macports-saved_2016-01-26_at_13:43:53
##

# MacPorts Installer addition on 2016-01-26_at_13:43:53: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

