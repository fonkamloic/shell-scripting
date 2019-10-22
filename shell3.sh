#Renam a file to file.name
#where name is the login name of the user execution the script
name=$1
set 'whoami'
mv $name $name.$1
