#!/bin/bash
filename="dl.txt" ;
echo "Enter The Page Link :"
read link
while [ "$answer" != "n" ];do
	echo 'Please Enter Pattern :'
	read pattern
	echo "<------------This can take a while. Please be patient------------>"
	lynx -dump -nonumbers  -listonly $link | egrep $pattern > $filename 
	cat $filename
	echo "Do You whant Change Pattern ? y / n :"
	read answer
done
echo "<------------dl.txt----Has-Been-Created----successfully------------>"
