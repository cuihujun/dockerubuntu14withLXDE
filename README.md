build image
$ docker build -t ubuntu14 .


run vnc & share folder
$ docker run --privileged=true -v ~/Downloads/:/opt/data -it -p 5901:5901 -p 6901:6901 ubuntu14 bash

