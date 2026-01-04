cmake_minimum_required(VERSION 3.8)
project(yolo11_seg_interfaces)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
# ADDED: Required for new messages
find_package(std_msgs REQUIRED)

# Generate custom messages
rosidl_generate_interfaces(${PROJECT_NAME}
  # --- Your Existing Messages ---
  "msg/DetectedObject.msg"
  "msg/SemanticObject.msg"
  "msg/SemanticObjectArray.msg"
  "msg/Point2D.msg"
  "msg/Vector2.msg"
  "msg/Pose2D.msg"
  "msg/BoundingBox2D.msg"
  "msg/Mask.msg"
  "msg/Detection.msg"
  "msg/DetectionArray.msg"

  # Services
  "srv/CheckCandidates.srv"

  # Dependencies for BOTH sets of messages
  DEPENDENCIES geometry_msgs builtin_interfaces std_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_export_dependencies(rosidl_default_runtime)
ament_package()