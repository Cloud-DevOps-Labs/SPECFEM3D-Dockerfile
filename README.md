# SPECFEM3D-Dockerfile

PoC to consume SPECFEM3d through Docker containers without install

## Requirements

* Docker for [Windows](https://docs.docker.com/docker-for-windows), [macOS](https://docs.docker.com/docker-for-mac) or [Linux](https://docs.docker.com/engine/installation/linux) 
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Using for simulate

````bash
    
    # Build locally (launch ./setup.sh before)
    $ docker build -t specfem3d-builder:latest .
    
    # Exec mapping directories
    $ docker run --name specfem3d-builder -v /full/host/path/to/DATA/:/app/DATA -v /full/host/path/to/DATA/OUTPUT_FILES/:/app/OUTPUT_FILES specfem3d-builder
````


## Install for developing

````bash
    $ chmod a+x ./setup.sh
    $ ./setup.sh
````


## Next Steps

- [x] Publish in the [DockerHub](https://hub.docker.com)
- [ ] Create Dockerfiles for the other steps in a formal simulation

Thanks for starring or collaborating :)
