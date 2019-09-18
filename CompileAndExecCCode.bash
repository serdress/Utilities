#!/bin/bash
##################
#Author @serdress
##################
echo 'Introduce a c archive to compile'
read CFILE
if [ -r ./$CFILE ] && [ "${CFILE##*.}" == "c" ]; #If archive exists and is readable and his extension is "c"
    then
       echo 'Introduce a destination archive'
       read DESTINATION
       if [ ! -z $DESTINATION ]; # If destination is especifed
        then
          gcc $CFILE -o $DESTINATION #Compile with destination
          echo -e '***** EXECUTING '$DESTINATION' ***** \n '
          ./$DESTINATION
        else
          gcc $CFILE
          echo -e '***** EXECUTING a.out ***** \n '
          ./a.out #Execute the archive with the default name
           fi
    else
    ./$0 #If the archive does not exist, execute another time the script
fi
