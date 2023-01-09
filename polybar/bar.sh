#!/usr/bin/env bash

function switch() {
	vers=$(cat /tmp/dbar)

	case $vers in
		multi)
		mode=perf
		;;

		perf)
		mode=multi
		;;

		*)
		mode=multi
		;;
	esac
	
	/usr/bin/echo $mode > /tmp/dbar
	/usr/bin/polybar-msg cmd quit
	echo $mode
	exec /usr/bin/polybar $mode

}

function menu() {
	action=$(/usr/bin/echo -e "switch\nmulti\nperf\ntoggle\nrestart" | \
		/usr/bin/dmenu -b -fn "FiraCode Nerd Font" -nb "#282A2E" -sf "#F0C674" -sb "#373B41" | \
		/usr/bin/sed -zE "s/(.*)\n*/\1/g")

	if [[ $action == "toggle" ]]; then
		/usr/bin/polybar-msg cmd toggle

	elif [[ $action == "restart" ]]; then
		/usr/bin/polybar-msg cmd restart

	elif [[ $action == "switch" ]]; then
		switch

	elif [[ -n $action ]]; then
		/usr/bin/polybar-msg cmd quit
		exec /usr/bin/polybar $action
	fi
}

case "$1" in
	--start)
	echo "multi" > /tmp/dbar
	exec /usr/bin/polybar multi
	;;

	--switch)
	switch
	;;

	*)
	menu
	;;
esac
