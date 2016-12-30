# Pull base image.
FROM ubuntu:14.04

# Install LXDE and VNC server.
RUN \
    apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common python-software-properties && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal tightvncserver && \
    rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

# Expose ports.
EXPOSE 5901



##---------------------------------------------Comments---------------------------------------------

## build image
# $ docker build -t ubuntu14 .


## run vnc & share folder
#docker run --privileged=true -v ~/Downloads/:/opt/data -it -p 5901:5901 -p 6901:6901 ubuntu14 bash




