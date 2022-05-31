#!/bin/sh

sfile=/tmp/polybar

case $1 in
	--lum)
		s=$(cat $sfile | cut -d"," -f1)
		id=$(cat $sfile |cut -d"," -f2)
		case $id in
			perf)
				killall polybar
				/bin/polybar -c ~/.config/polybar/lum.ini &
				echo "perf,$$" > $sfile
				sleep 2
				killall polybar
				echo $s > $sfile
				/bin/polybar -c ~/.config/polybar/perfbar.ini
				;;
			mult)
				killall polybar
				/bin/polybar -c ~/.config/polybar/lum.ini &
				echo "mult,$$" > $sfile
				sleep 2
				killall polybar
				echo $s > $sfile
				/bin/polybar -c ~/.config/polybar/multbar.ini
				;;
			*)
				eval "kill $id"
				killall polybar
				/bin/polybar -c ~/.config/polybar/lum.ini &
				echo "$s,$$" > $sfile
				sleep 2
				killall polybar
				echo $s > $sfile
				eval "/bin/polybar -c ~/.config/polybar/"$s"bar.ini"
		esac
		;;
	--change)
		s=$(cat $sfile | cut -d"," -f1)
		case $s in
			perf)
				echo mult > $sfile
				killall polybar
				/bin/polybar -c ~/.config/polybar/multbar.ini
				;;
			mult)
				echo perf > $sfile
				killall polybar
				/bin/polybar -c ~/.config/polybar/perfbar.ini
				;;
		esac
		;;
	-r)
		s=$(cat $sfile | cut -d"," -f1)
		killall polybar
		eval "/bin/polybar -c ~/.config/polybar/"$s"bar.ini"	
		;;
	*)
		echo mult > $sfile
		chmod 600 $sfile
		/bin/polybar -c ~/.config/polybar/multbar.ini
		;;
esac
