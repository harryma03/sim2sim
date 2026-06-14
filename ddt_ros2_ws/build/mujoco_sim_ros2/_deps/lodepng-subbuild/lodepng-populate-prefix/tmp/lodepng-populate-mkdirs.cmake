# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-src"
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-build"
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix"
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix/tmp"
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix/src/lodepng-populate-stamp"
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix/src"
  "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix/src/lodepng-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix/src/lodepng-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/aiseon/tita/sim2sim2real_bipedal/ddt_ros2_ws/build/mujoco_sim_ros2/_deps/lodepng-subbuild/lodepng-populate-prefix/src/lodepng-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
