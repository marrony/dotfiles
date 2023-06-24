#set -x

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# loads private resources
[ -f ~/.privaterc.bash ] && source ~/.privaterc.bash

export TERM=xterm-256color
export PATH="/opt/homebrew/bin:$PATH"

export JAVA_HOME=$(/usr/libexec/java_home -v 11)
export SBT_OPTS="-XX:MaxMetaspaceSize=1024m"

export FAUNA_HOME=~/FaunaDB
export FAUNA_OPS=$FAUNA_HOME/ops

if [ -f $FAUNA_OPS/util/init.sh ]; then
  source $FAUNA_OPS/util/init.sh
fi

# macosx
if [ $(which brew) ]; then
	for f in $(ls /opt/homebrew/etc/bash_completion.d); do
    source "/opt/homebrew/etc/bash_completion.d/$f"
  done
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
alias reset_camera='sudo killall VDCAssistant'
alias reset_audio='sudo killall coreaudiod'
alias catc='pygmentize -g'
alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"
alias get_idf="source ~/Development/esp-idf/export.sh"
alias vl="vault login -method=oidc | grep '^token ' | tr -s ' ' | cut -d ' ' -f2 | pbcopy"

export VAULT_ADDR="https://vault.faunadb.net"

bind '"\e[1;5C": end-of-line'
bind '"\e[1;5D": beginning-of-line'

#ssh -L 192.168.15.2:9000:127.0.0.1:8443 -N localhost

pi() {
	ssh -4 pi@raspberrypi.local
}

ubuntu() {
	ssh -4 marrony@ubuntu.local
}

function bastion {
	ssh marrony@cloud-bastion.faunadb.net
}

function preview-port-forward {
	ssh -L 5005:localhost:5005 cloud-bastion.faunadb.net ssh -L 5005:localhost:5005 -v -N "$1"
}

function fauna_localhost {
	export FAUNA_ROOT_KEY=$PRIVATE_LOCAL_FAUNA_ROOT_KEY
	export FAUNA_DOMAIN=127.0.0.1
	export FAUNA_HOST=127.0.0.1
	export FAUNA_PORT=8443
	export FAUNA_SCHEME=http
	export FAUNA_ENDPOINT="$FAUNA_SCHEME://$FAUNA_DOMAIN:$FAUNA_PORT"
}

function fauna_cloud_verbose {
	export FAUNA_ROOT_KEY=$PRIVATE_CLOUD_FAUNA_ROOT_KEY
	export FAUNA_DOMAIN=db.fauna.com
	export FAUNA_HOST=db.fauna.com
	export FAUNA_PORT=443
	export FAUNA_SCHEME=https
	export FAUNA_ENDPOINT="$FAUNA_SCHEME://$FAUNA_DOMAIN:$FAUNA_PORT"
}

function fauna_cloud {
	export FAUNA_ROOT_KEY=$PRIVATE_CLOUD_FAUNA_ROOT_KEY
	unset FAUNA_DOMAIN
	unset FAUNA_HOST
	unset FAUNA_PORT
	unset FAUNA_SCHEME
	unset FAUNA_ENDPOINT
}

function list_tm_exclusion() {
	mdfind "com_apple_backup_excludeItem = 'com.apple.backupd'"
}

function list_tm_exclusion_panel() {
	plutil -extract SkipPaths xml1 -o - /Library/Preferences/com.apple.TimeMachine.plist | plutil -convert json -r -o - -- -
}

function kill-core() {
	local pid=$(ps aux | grep faunadb | grep java | awk '{print $2}')
	if [ ! -z "$pid" ]; then
		echo "Killing core pid: $pid"
		kill -9 "$pid"
	fi
}


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/marrony/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/marrony/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/marrony/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/marrony/Downloads/google-cloud-sdk/completion.bash.inc'; fi
