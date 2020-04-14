#!/bin/bash
echo "enter path of file" 
read file

echo "word by word:"
while IFS= read -r word
do
  echo "$word"
done < "$file"


echo ""

echo "line by line: "
while IFS= read line
do
        # display $line
	echo "$line"
done <"$file"

echo ""

echo "by cat file"
echo "`/bin/cat $file`"

echo ""
echo "by less file"
echo "`/bin/less $file`"

echo ""
echo "by xdg-open file"
echo "`/usr/bin/xdg-open $file`"

