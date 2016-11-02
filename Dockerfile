FROM alpine:3.3
# docker build -t specfem3d-builder:latest .
# docker run --name specfem3d-builder -v /Users/manuel.depaz/Desktop/SPECFEM3D/bin/devel/DATA/:/app/DATA -v /Users/manuel.depaz/Desktop/SPECFEM3D/bin/devel/OUTPUT_FILES/:/app/OUTPUT_FILES specfem3d-builder
# TODO add ulimit flag i.e. --ulimit nofile=1024:1024

MAINTAINER Pelirrojo <manuel.depaz@gmail.com>

# Install Deps
RUN apk update &&\
    apk add --no-cache \
    gcc \
    g++ \
    gfortran \
    libgfortran \
    gsl \
    make &&\
    rm -rf /var/cache/apk/*

# mpif90
# libfgsl0 libfgsl0-dev libfgsl0-doc
# libcr-dev mpich2 mpich2-doc

# Environment vars
ENV FC=gfortran
ENV CC=gcc

# Installing software
RUN mkdir /app
COPY bin/devel/ /app/

# Setup
WORKDIR /app
RUN ./configure CC=${CC} FC=${FC} --without-mpi
#RUN ./configure FC=gfortran CC=gcc MPIFC=mpif90 --with-mpi

ENTRYPOINT make xspecfem3D
