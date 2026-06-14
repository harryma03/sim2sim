# MuJoCo CMake Configuration File
include(${CMAKE_CURRENT_LIST_DIR}/MujocoTargets.cmake)

# 导出 mujoco 库和头文件路径（使用命名空间目标）
set(mujoco_FOUND TRUE)
set(mujoco_VERSION 2.3.7)
set(mujoco_LIBRARIES mujoco::mujoco)  # 用命名空间避免冲突
set(mujoco_INCLUDE_DIRS "/home/aiseon/tita/sim2sim2real/mujoco/include")
set(mujoco_LIBRARY_DIRS "/home/aiseon/tita/sim2sim2real/mujoco/lib")
