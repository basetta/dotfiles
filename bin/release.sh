#!/bin/zsh
SESSION=RELEASE
tmux has-session -t $SESSION
if [ $? != 0 ]
then
    tmux new-session -s $SESSION -n ANSIBLE -d
    tmux send-keys -t $SESSION 'cd /Users/emarsys/Sandbox/playbooks/ansible' C-m

    #BROADCAST RELEASE
    tmux new-window -t $SESSION:2 -n B_R
    tmux split-window -v -t $SESSION:2
    tmux send-keys -t $SESSION:2.1 '/Users/emarsys/Sandbox/broadcast_repos/broadcast_release' C-m
    tmux send-keys -t $SESSION:2.2 '/Users/emarsys/Sandbox/broadcast_repos/broadcast' C-m

    #JBOSS RELEASE 
    tmux new-window -t $SESSION:3 -n B_R
    tmux split-window -v -t $SESSION:3
    tmux send-keys -t $SESSION:3.1 '/Users/emarsys/Sandbox/broadcast_repos/jboss_release' C-m
    tmux send-keys -t $SESSION:3.2 '/Users/emarsys/Sandbox/broadcast_repos/jboss' C-m

fi
tmux attach -t $SESSION



