# Name of the detected object class
string class_name

# Instance ID of the detected object
int32 instance_id

# The YOLO confidence score
float32 confidence

# The high-dimensional CLIP embedding
float32[] embedding

# The Text Embedding (Semantic features)
float32[] text_embedding

float32 similarity

# The 2D eroded binary mask. 
sensor_msgs/Image mask