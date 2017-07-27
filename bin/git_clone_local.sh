#!/bin/bash

function usage_and_exit()
{
	echo "$0 -o origin -d destination"
	exit
}

#git source code
function require_clean_work_tree () {
    git rev-parse --verify HEAD >/dev/null || exit 1
    git update-index -q --ignore-submodules --refresh
    err=0

    if ! git diff-files --quiet --ignore-submodules
    then
        echo >&2 "Cannot $1: You have unstaged changes."
        err=1
    fi

    if ! git diff-index --cached --quiet --ignore-submodules HEAD --
    then
        if [ $err = 0 ]
        then
            echo >&2 "Cannot $1: Your index contains uncommitted changes."
        else
            echo >&2 "Additionally, your index contains uncommitted changes."
        fi
        err=1
    fi

    if [ $err = 1 ]
    then
        test -n "$2" && echo >&2 "$2"
        exit 1
    fi
}

while getopts o:d: flag
do
	case $flag in
		o)
			ORIGIN=$OPTARG;;
		d)
			DESTINATION=$OPTARG;;
		?)
			usage_and_exit;;
	esac
done


if [[ -z "$ORIGIN" || -z "$DESTINATION" ]];
then
	
    usage_and_exit
    
else
	echo "Checking origin $ORIGIN"
    cd "$ORIGIN"
   	require_clean_work_tree
    REPO_URL=`git config --get remote.origin.url` 

    echo "Cloning Repository"
    git clone "$ORIGIN" "$DESTINATION"
    cd "$DESTINATION"
    git remote set-url origin "$REPO_URL"	
fi


