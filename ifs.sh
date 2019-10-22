# ifs is internal field separator
line="Shell Scriptign is fun"
IFS=:
set $line
echo $1
echo $2
