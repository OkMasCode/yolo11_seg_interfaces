# Custom message for detected object information

# Name of the detected object class
string object_name

# Instance ID of the detected object
int32 object_id

# 3D centroid position of the object
geometry_msgs/Vector3 centroid

# Timestamp of the detection
builtin_interfaces/Time timestamp

# CLIP embedding vector (512 dimensions for ViT-B/32)
float32[] embedding

# The Text Embedding (Semantic features)
float32[] text_embedding

float32 similarity
