PLATFORM=`uname`
if [ "$PLATFORM" = "Darwin" ]
then
    if [ -z "$(locate mac-tick-processor)" ]
        then 
        echo "Couldn't find mac-tick-processor"
        exit 1
    fi
elif [ "$PLATFORM" = "Linux" ]
then
    if [ -z "$(locate linux-tick-processor.py)" ]
    then 
        echo "Couldn't find linux-tick-processor.py"
        exit 1
    fi
else
    echo "Unknown platform"
fi

