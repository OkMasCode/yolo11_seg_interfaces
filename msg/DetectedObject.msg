# Custom message for detected object information

# Name of the detected object class
string object_name

# Instance ID of the detected object
int32 object_id

# 3D centroid position of the object
geometry_msgs/Vector3 centroid

geometry_msgs/Vector3 box_min
geometry_msgs/Vector3 box_max 

# Timestamp of the detection
builtin_interfaces/Time timestamp

# CLIP embedding vector (512 dimensions for ViT-B/32)
float32[] embedding

# The Text Embedding (Semantic features)
float32[] text_embedding

# Confidence score from detector
float32 confidence

float32 similarity
