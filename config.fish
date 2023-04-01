if status is-interactive
    # Commands to run in interactive sessions can go here
end

set_color red --bold

function center_text
    # Get the width of the terminal
    set term_width (stty size | awk '{print $2}')

    # Calculate the number of spaces needed to center the text
    set text_width (printf '%s' $argv[1] | wc -c)
    set num_spaces (echo "($term_width - $text_width) / 2" | bc | awk '{print int($1)}')

    printf '\n\n\n'

    # Print the spaces followed by the text, one character at a time
    set line ''
    for char in (printf '%s' $argv[1] | grep -o .)
        set line "$line$char"
        for i in (seq $num_spaces)
            printf ' '
        end
        printf '%s\r' $line
        sleep 0.05
    end
    printf '\n'
end

center_text 'Hello Sir !!'

set fish_greeting ''

set_color normal
