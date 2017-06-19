export TERM=xterm-256color
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

if [ $(which brew) ]; then
	source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
	source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
else
	#source /etc/bash_completion.d/git-completion.bash
	source /etc/bash_completion.d/git-prompt
fi

DIRECTORY_COLOR=ex
SYMBOLI_LINKK_COLOR=fx
SOCKET_COLOR=cx
PIPE_COLOR=dx
EXECUTABLE_COLOR=cx
BLOCK_SPECIAL_COLOR=eg
CHARACKER_SPECIAL_COLOR=ed
EXEC_SETUID_COLOR=ba
EXEC_SETGID_COLOR=ga
DIR_WITH_STICKY_COLOR=ac
DIR_WITOUT_STICK_COLOR=ad

export CLICOLOR=1
export LSCOLORS="$DIRECTORY_COLOR$SYMBOLI_LINKK_COLOR$SOCKET_COLOR$PIPE_COLOR$EXECUTABLE_COLOR$BLOCK_SPECIAL_COLOR$CHARACKER_SPECIAL_COLOR$EXEC_SETUID_COLOR$EXEC_SETGID_COLOR$DIR_WITH_STICKY_COLOR$DIR_WITOUT_STICK_COLOR"

#export PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(__git_ps1)\$ "

alias ll='ls -l'
alias la='ll -a'
alias grep='grep --color'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[ -f ~/.privaterc.bash ] && source ~/.privaterc.bash

eval "$(rbenv init -)"

