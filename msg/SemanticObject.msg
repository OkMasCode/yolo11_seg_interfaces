# Semantic object entry matching SemanticObjectMap ObjectEntry
string object_id
string name
string frame
builtin_interfaces/Time timestamp
geometry_msgs/Vector3 pose_cam
geometry_msgs/Vector3 pose_map

# Bounding-box metadata for downstream map export and visualization
string bbox_type
geometry_msgs/Vector3 box_size
geometry_msgs/Quaternion bbox_orientation
geometry_msgs/Point[] bbox_corners

uint32 occurrences
float32 similarity
float32 confidence
float32[] image_embedding
