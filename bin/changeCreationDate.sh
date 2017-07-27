#!/bin/bash
echo $1
prefix_date=`/usr/bin/exiftool -CreateDate "$1" | cut -d : -f 2,3,4 | cut -d ' ' -f 2 | sed 's/:/-/g'`
temp_date=`/usr/bin/exiftool -CreateDate "$1" | cut -d: -f 2-6 | cut -d' ' -f 2-`
day=$(echo $temp_date| cut -d' ' -f 1 | sed 's/://g')
hour=$(echo $temp_date | cut -d' ' -f 2 | cut -d: -f 1,2 | sed "s/://g")
seconds=$(echo $temp_date | cut -d' ' -f 2 | cut -d: -f 3 )
if [ -n "$temp_date" ]; then
    touch -t $day$hour.$seconds "$1"
fi

echo $day$hour.$seconds
