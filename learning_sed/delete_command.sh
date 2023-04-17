#This script makes an introduction of delete commands


#delete sea

printf 'rock\nsea\ngreen\n'| sed '/sea/d'

echo "------------------"

#don't delete at

printf 'rock\neat\ngreen\n' | sed '/at/!d'



