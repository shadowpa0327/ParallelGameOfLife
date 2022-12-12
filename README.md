# GameOfLife

## Introduction
A fast, C++ OpenGL implementation of Conway's Game of Life. Now includes a 3D version!

![](http://i.imgur.com/wuedsKw.png)

![](http://i.imgur.com/tzZC26g.png)

![](http://i.imgur.com/pqAgWU6.png)

The 3D Version:

![](http://i.imgur.com/0Pk5VKI.png)

![](http://i.imgur.com/fxaEt4O.png)

![](http://i.imgur.com/BFQtKue.png)

![](http://i.imgur.com/QNmfhg0.png)

Keyboard Commands:

  [1...9] : Simulation Size
  
  [Shift + 1...5] Larger Simulation Size
  
  [Tab] : toggle 2D/3D
  
  [Space] : Start/Stop Simulation
  
  [,],[.] : Zoom in/out
  
  [w],[s],[a],[d] : Pan
  
  [r] : toggle rotation
  
  [s] : toggle shading style


## To Use Docker for CUDA version
First we need to build the docker image first.
```
cd docker
./build_docker.sh
```
Note that we only need to do it one time.
Secondly, we can use the script to launch the docker. The docker will mount the directory automatically, so we can modify the file outside and run inside the docker. 
To run it, go back to the project root directory, and run the following command.
```
./docker/run.sh
```
