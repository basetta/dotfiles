#!/bin/zsh
SESSION=BC1
tmux has-session -t $SESSION
if [ $? != 0 ]
then
    tmux new-session -s $SESSION -n DBA -d
    tmux send-keys -t $SESSION 'ssh e3eu-centraldb' C-m

    #NFS
    tmux new-window -t $SESSION:2 -n NFS
    tmux send-keys -t $SESSION 'ssh e3eu-nfs' C-m

    #centrals
    tmux new-window -t $SESSION:3 -n CENTRALS
    tmux split-window -h -t $SESSION:3
    tmux send-keys -t $SESSION:3.1 'ssh e3eu-centrala' C-m
    tmux send-keys -t $SESSION:3.2 'ssh e3eu-centralb' C-m
    tmux select-layout -t $SESSION:3 even-horizontal 

    #webs
    tmux new-window -t $SESSION:4 -n WEBS_1
    tmux split-window -v -t $SESSION:4
    tmux split-window -h -t $SESSION:4
    tmux split-window -v -t $SESSION:4
    tmux send-keys -t $SESSION:4.1 'ssh e3eu-web1' C-m
    tmux send-keys -t $SESSION:4.2 'ssh e3eu-web2' C-m
    tmux send-keys -t $SESSION:4.3 'ssh e3eu-web6' C-m
    tmux send-keys -t $SESSION:4.4 'ssh e3eu-web7' C-m
    tmux select-layout -t $SESSION:4 main-horizontal
    
    #webs
    tmux new-window -t $SESSION:5 -n WEBS_2
    tmux split-window -v -t $SESSION:5
    tmux split-window -h -t $SESSION:5
    tmux send-keys -t $SESSION:5.1 'ssh e3eu-web5' C-m
    tmux send-keys -t $SESSION:5.2 'ssh e3eu-web3' C-m
    tmux send-keys -t $SESSION:5.3 'ssh e3eu-web4' C-m
    tmux select-layout -t $SESSION:4 main-horizontal

    #mailers
    tmux new-window -t $SESSION:6 -n MAILERS
    tmux select-layout -t $SESSION:5 main-horizontal

    #bus
    tmux new-window -t $SESSION:7 -n BUS
    tmux split-window -v -t $SESSION:7
    tmux split-window -h -t $SESSION:7
    tmux split-window -h -t $SESSION:7
    tmux send-keys -t $SESSION:7.1 'ssh e3eu-bu4' C-m
    tmux send-keys -t $SESSION:7.2 'ssh e3eu-bu5' C-m
    tmux send-keys -t $SESSION:7.3 'ssh e3eu-bu6' C-m
    tmux select-layout -t $SESSION:7 main-horizontal

    tmux select-window -t $SESSION:1
fi
tmux attach -t $SESSION



