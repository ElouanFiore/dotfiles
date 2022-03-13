# If we are the last shell to close we clear term
if [ "$SHLVL" = 1 ]; then
	clear_console -q
fi
