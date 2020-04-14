#!/bin/bash
#remindme- searches a data file for matching lines, or shows the entire contents of data file if no arguement is specified

rememberfile="$HOME/.remember"

if [ $# -eq 0 ]
then
more $rememberfile
else
grep -i "$@" $rememberfile | ${PAGER:-more}
fi
exit 0
