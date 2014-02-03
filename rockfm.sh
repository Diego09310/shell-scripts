#!/bin/bash

#period=120
list_file=/home/diego/Dropbox/Github/shell-scripts/list.txt

#while [ true ]
#do
	song=`curl -s http://player.rockfm.fm/rdsrock.php`
	name=`echo $song | sed 's/"@[a-Z\.]*//g' | sed 's/.*"//'`
	artist=`echo $song | sed 's/\:.*//g'`
	name_rock=`echo $name | sed 's/@.*//g'`

	rm index.html
	prev_name=`tail -1 list.txt`
	notify-send "$name"
	
	if [ $name != $prev_name -o $name_rock != "RockFM, LA ÚNICA RADIO DE ROCK" ]
	then
		echo $name >> $list_file
	fi
#sleep $period
#done
