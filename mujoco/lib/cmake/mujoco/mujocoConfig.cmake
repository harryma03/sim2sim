# MuJoCo CMake Configuration File - 彻底修复目标名冲突
# 核心：只定义带命名空间的 mujoco::mujoco，不定义全局 mujoco 目标

if(NOT TARGET mujoco::mujoco)
  # 定义命名空间目标，避免全局冲突
  add_library(mujoco::mujoco SHARED IMPORTED)
  set_target_properties(mujoco::mujoco PROPERTIES
    IMPORTED_LOCATION "/home/aiseon/tita/sim2sim2real/mujoco/lib/libmujoco.so"
    INTERFACE_INCLUDE_DIRECTORIES "/home/aiseon/tita/sim2sim2real/mujoco/include"
    IMPORTED_NO_SONAME TRUE
  )
endif()

# 导出标准变量，保持和官方兼容
set(mujoco_FOUND TRUE)
set(mujoco_VERSION 2.3.7)
set(mujoco_LIBRARIES mujoco::mujoco)  # 只导出命名空间目标
set(mujoco_INCLUDE_DIRS "/home/aiseon/tita/sim2sim2real/mujoco/include")
set(mujoco_LIBRARY_DIRS "/home/aiseon/tita/sim2sim2real/mujoco/lib")

# 禁止定义全局 mujoco 目标（关键）
if(TARGET mujoco)
  message(WARNING "Global target 'mujoco' already exists, using 'mujoco::mujoco' instead")
endif()
