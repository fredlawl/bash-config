#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

$(cd "$DIR" && git submodule update --init --recursive &>/dev/null)
$(mkdir -p "$HOME/.tmux/plugins" &>/dev/null)
$(cp -r "$DIR/.tmux/plugins/tpm" "$HOME/.tmux/plugins" &>/dev/null)
echo "Installed tmux plugins. Don't forget to run tmux and ctrl + b + I"

# NOTE: Don't forget to open up tmux and type
# ctrl + b + I

for FILE in $DIR/.*; do
    FILENAME="$(basename $FILE)"
    [ -f "$FILE" ] || continue
    [ ! "$FILENAME" == ".gitignore" ] || continue
    [ ! "$FILENAME" == ".gitmodules" ] || continue

    echo "Linking $FILENAME"
    if [[ ! -e "$HOME/$FILENAME.bak" ]]
    then
        $(mv "$HOME/$FILENAME" "$HOME/$FILENAME.bak" &>/dev/null)
    fi

    $(ln -s "$DIR/$FILENAME" "$HOME/$FILENAME" &>/dev/null)
done
