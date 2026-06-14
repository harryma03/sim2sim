# Define imported library target for MuJoCo (带命名空间，避免冲突)
if(NOT TARGET mujoco::mujoco)
  add_library(mujoco::mujoco SHARED IMPORTED)
  # Set path to libmujoco.so and include directory
  set_target_properties(mujoco::mujoco PROPERTIES
    IMPORTED_LOCATION "/home/aiseon/tita/sim2sim2real/mujoco/lib/libmujoco.so"
    INTERFACE_INCLUDE_DIRECTORIES "/home/aiseon/tita/sim2sim2real/mujoco/include"
    IMPORTED_NO_SONAME TRUE
  )
endif()
