CLIENT_ID='your_client_id'
CLIENT_SECRET='your_client_secret'

# cmd_get_description() is optional, just remove it if you don't need.
# Used to provide task description
#
# examples:

# with dmenu
cmd_get_description() {
    echo -n | dmenu -p "ticktask description:"
}

# with gxmessage
cmd_get_description() {
    gxmessage "Type description" --entry
}

# read from terminal input (end on newline)
cmd_get_description() {
    read -ep "Type description: " line
    echo -n "$line"
}

# read from terminal input (allow multiline, end with ctrl+d)
cmd_get_description() {
    echo Type description: >&2
    cat < /dev/stdin
}

# open st terminal with vim
cmd_get_description() {
    filename=/tmp/ticktask_description_$(date +"%s")
    st -e vim "$filename"
    cat "$filename"
    rm "$filename"
}

# you can ever customize behavior depending on executable name
cmd_get_description() {
    if [ "$(basename "$0")" = "ticktask_with_desc" ]; then
        echo "something that prints description"
    fi
}
