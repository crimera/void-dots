if status is-interactive
	# sets the color of the terminal to wal
    if not string match --quiet -e $TERM 'screen-256color'
        cat /home/fauna/.cache/wal/sequences
    end
    # Commands to run in interactive sessions can go here
end
