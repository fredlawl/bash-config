if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
    fi
fi