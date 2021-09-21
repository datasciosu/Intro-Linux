# Set the base image for the docker file
FROM ubuntu:latest

# Run apt-get to install some software
RUN apt-get -y update
RUN apt-get install -y curl
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y vim

# install pandas, numpy
RUN pip3 install pandas
RUN pip3 install numpy

# download miniconda
RUN curl -LO http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh

# install miniconda
RUN bash Miniconda3-latest-Linux-x86_64.sh -p /miniconda -b

# add minoconda to the $PATH environment
ENV PATH=${PATH}:/miniconda/bin

# update conda
RUN conda update -y conda

# get into the home directory
WORKDIR /home