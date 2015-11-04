# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "/etc/skel/.bashrc" ]; then
        . "/etc/skel/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# TaskWarrior aliases
switchTask() {
    task +ACTIVE stop
    task $1 start
}
alias tshow="task active"
alias twork="task +work -DELEGATED"
alias tpersonal="task +personal -DELEGATED"
alias tdelegated="task +DELEGATED"
alias tduetoday="task duetoday"
alias tstart=switchTask
alias tstop="task +ACTIVE stop"

# TaskWarrior informational greeting"
printTaskInfo() {
inboxTaskCount=$(task -TAGGED count)
nextTaskCount=$(task +TAGGED -DELEGATED count)
delegatedTaskCount=$(task +TAGGED +DELEGATED count)
waitingTaskCount=$(task +WAITING count)
echo -e "\033[1;31m[=== TASKS === inbox $inboxTaskCount = next $nextTaskCount = delegated $delegatedTaskCount = waiting $waitingTaskCount ===]\033[0m"
}

printTaskInfo
echo CURRENT TASK: $(task +ACTIVE export | jq '.description' | tr -d "\"" | cut -c 1-25)...
