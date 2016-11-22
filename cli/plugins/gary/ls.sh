# ls - list all commands

echo "MeteorJS Comamnd Line Interface - Zio Software Development (Zio SD)"
echo "Gary Ascuy <gary.ascuy@gmail.com>"
printf '\n'

echo 'Abailable Subcommands:'
ls -1 $(dirname `which $0`) | cat -n | grep \.sh
