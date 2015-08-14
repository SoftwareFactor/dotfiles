# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "/etc/skel/.bashrc" ]; then
        . "/etc/skel/.bashrc"
    fi
fi

