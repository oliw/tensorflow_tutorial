#!/bin/bash

docker build -t tensorflow_handwriting:latest .

CURRENT_DIRECTORY=`pwd`

if [[ $1 = "console" ]]
then
  docker run -it -v $CURRENT_DIRECTORY/notebooks:/notebooks -v $CURRENT_DIRECTORY/data:/data tensorflow_handwriting:latest ipython
else
  docker run -it -p 8888:8888 -v $CURRENT_DIRECTORY/notebooks:/notebooks -v $CURRENT_DIRECTORY/data:/data tensorflow_handwriting:latest
fi

