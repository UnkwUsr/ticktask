CLIENT_ID="your_client_id"
CLIENT_SECRET="your_client_secret"

cmd_get_description() {
    # P.S. this is examples. Only one at a time can be picked and the rest
    # should be removed

    # dmenu
    echo -n | dmenu -p "ticktask description:"

    # gxmessage
    gxmessage "Type description" --entry

    # read from terminal input (end on newline)
    read -ep "Type description: " line
    echo -n "$line"

    # read from terminal input (allow multiline, end with ctrl+d)
    echo Type description: >&2
    cat < /dev/stdin

    # open st terminal with vim
    filename=/tmp/ticktask_description_$(date +"%s")
    st -e vim "$filename"
    cat "$filename"
    rm "$filename"

    # you can ever customize behavior depending on executable name
    if [ "$(basename "$0")" = "ticktask_with_desc" ]; then
        echo "something that prints description"
    fi
}
