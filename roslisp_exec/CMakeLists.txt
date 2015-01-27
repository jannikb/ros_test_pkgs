cmake_minimum_required(VERSION 2.8.3)
project(roslisp_exec)

find_package(catkin REQUIRED)

catkin_package(
)

include_directories(
${catkin_INCLUDE_DIRS}
)

macro(catkin_add_lisp_script _output _script)
  # Creates a scripts directory and puts the lisp executables in it
  file(MAKE_DIRECTORY ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_BIN_DESTINATION})
  message("project_source ${PROJECT_SOURCE_DIR}, devel_prefix ${CATKIN_DEVEL_PREFIX}, project ${PROJECT_NAME}, asd ${CATKIN_PACKAGE_BIN_DESTINATION}")

  file(
    WRITE ${_output}
    "#!/bin/bash
ROS_SBCL_PATH=`rospack find sbcl`
export ROSLISP_PATH=`rospack find roslisp`
if [ -z "$ROSLISP_PATH" ]; then
  echo "roslisp not found"
  exit 1
fi

if [ -n "$ROS_SBCL_PATH" ]; then
  SBCL=/scripts/run-sbcl.sh
else
  SBCL=sbcl
fi

$SBCL --noinform --load $ROSLISP_PATH/scripts/roslisp-sbcl-init --script ${PROJECT_SOURCE_DIR}/scripts/${_script}"rosun)

  file(
    COPY ${_output}
    DESTINATION ${CATKIN_DEVEL_PREFIX}/${CATKIN_PACKAGE_BIN_DESTINATION}
    FILE_PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ)

endmacro(catkin_add_lisp_script)
