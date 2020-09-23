## How to run

docker run --tty --interactive --rm \
    -e DISPLAY=$DISPLAY \
    -e HOME=$HOME \
    -u $(id -u):$(id -g) \
    -v /tmp:/tmp \
    -v /mnt:/mnt \
    -v ${HOME}:/home/${USER} \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    qgisbox qgis

