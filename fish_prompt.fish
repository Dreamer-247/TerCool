function fish_prompt

    set -l cwd (pwd)
    set -l home (echo $HOME | sed 's+/+\\/+g')
    set -l cwd (echo $cwd | sed "s+$home+~+")

    echo -ne '\033[1;31m[\033[1;30m'$cwd'\033[1;31m]\033[0m'
    echo -ne '\033[1;31m\n ➤ \033[0m'

end
