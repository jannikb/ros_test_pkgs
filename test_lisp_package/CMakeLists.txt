cmake_minimum_required(VERSION 2.8.3)
project(test_lisp_package)

find_package(catkin REQUIRED)
catkin_package()

macro(catkin_add_lisp_executable _output _system_name _entry_point)
  # Creates a scripts directory and puts the lisp executables in it
  file(MAKE_DIRECTORY ${PROJECT_SOURCE_DIR}/scripts)
  message("rosrun roslisp make_node_exec ${PROJECT_NAME} ${_system_name} ${_entry_point} ${PROJECT_SOURCE_DIR}/scripts/${_output}")
  execute_process(COMMAND rosrun roslisp make_node_exec ${PROJECT_NAME} ${_system_name} ${_entry_point} ${PROJECT_SOURCE_DIR}/scripts/${_output})
endmacro(catkin_add_lisp_executable)

catkin_add_lisp_executable(test_exe test-lisp-package test-lisp-package:hello-world)
