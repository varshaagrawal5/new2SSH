#! /bin/sh

echo " this is a conflict file:branch 10 "
echo " I am learning devops. devops is fun, Linux is OS which is light, linux is light"> testing.txt

maxcount = 0
maxWord = ""

for i in $@
do 
        sed -i 's/light/linux/' testing.txt
        count ='grep -io $i testing.txt | wc -l'

        if [ $count -gt $maxCount ]
        then
            maxCount = $count
            maxWord = $i 
        fi
done
