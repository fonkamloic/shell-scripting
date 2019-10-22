echo "Enter UserName: \c"
read logname
line=`grep $logname /etc/passwd`
IFS=:
set $line
echo "Username:$1"
echo "User ID:$3"
echo "Group ID:$4"
echo "Comment Field:$5"

