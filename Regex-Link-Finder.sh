#!/bin/bash
if ! dpkg-query -W lynx ; then
   echo -e "This Software use lynx as depedency , do you whant install ? (y/n) \c"
   read rep
   if [ "$rep" == 'y' ]; then
      			sudo apt-get update  && sudo apt-get install lynx
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
   fi
	exit 1
fi
filename="dl.txt" ;
echo "Enter The Page Link :"
read link
while [ "$answer" != "n" ];do
	echo 'Please Enter You`re Regex  Pattern :'
	read pattern
	echo "<------------This can take a while. Please be patient------------>"
	lynx -dump -nonumbers  -listonly $link | egrep $pattern > $filename 
	cat $filename
	echo "Do You whant Change Pattern ? y / n :"
	read answer
done
echo "<------------dl.txt----Has-Been-Created----successfully------------>"
