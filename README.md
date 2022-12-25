# ros2djs-sample

### demo-exec
1. cd ./ros2djs-sample
2. docker-compose up -d --build
3. docker-compose exec test-demo bash
4. (terminal1) roslaunch turtlebot3_gazebo turtlebot3_world.launch
5. (terminal2) roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping
6. (terminal3) roslaunch rosbridge_server rosbridge_websocket.launch
7. (terminal4) roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
8. (open goolge chrome) open "localhost:8080"
