  #! /bin/sh

   echo "i am learning devops, devops is fun, linux is OS which is light, linux is linux" > testing.txt

   maxcount=0
   maxword=""

   for i in $@
   do 
           sed -i 's/light/linux/' testing.txt
           count='grep -io $i testing.txt | wc -1' 

           if [ $count -gt $maxcount ] 
           then
                     maxcount=$count
                     maxword=$i
            fi
     done

     echo "maximum times occured word: $maxword at $maxcount times"    