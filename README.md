* An Ubuntu GNU/Linux image with RepetierHost

This is an Ubuntu GNU/Linux Docker image with [[https://www.repetier.com/][RepetierHost]] preinstalled along with all dependencies.

* I removed Slic3r since it has been a while since the program has been updated.

** Running a container

#+BEGIN_EXAMPLE
docker run --rm -e DISPLAY=$DISPLAY \
  -v $PWD/root:/root:rw \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  --privileged -it avvp/ubuntu-repetierhost
#+END_EXAMPLE
