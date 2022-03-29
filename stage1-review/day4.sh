for item in `ls .*`

do

     fileName=`echo $item | awk -F. '{ print $1 }'`

     if [ -d $fileName ]

     then

         echo "Inside If Condition Execution ...."

         rm -rf $fileName

     fi

     mkdir $fileName

     cp -r $item $fileName
done
