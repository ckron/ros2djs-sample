FROM osrf/ros:noetic-desktop-full

ENV SHELL /bin/bash

RUN apt-get update && apt-get install -y \
    vim \
    screen \
    git

RUN apt-get update && apt-get install -y \
    ros-noetic-turtlebot3 \
    ros-noetic-turtlebot3-simulations

RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc \
    && /bin/bash -c "source ~/.bashrc"

RUN apt-get update && apt-get install -y \
    ros-noetic-rosbridge-suite
  
RUN apt-get update && apt-get install -y \
    ros-noetic-gmapping

ENV TURTLEBOT3_MODEL waffle