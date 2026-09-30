#!/bin/sh
sys=$1

# Try to find the value - it is guaranteed to be 4 octal digits.
match=$(grep -m1 $sys /opt/pidp11/systems/selections)
if [ -n "$match" ]
then
	echo "$match" | cut -f2
	exit 0
fi

echo default
