extends Area2D

func _on_body_entered(body):
	print('body entered')
	print(body.name)

# Function when the node enters the scenetree for the first time
func _ready():
	# Starting position
	position = Vector2(randf_range(50, 300),0)
	# Ship Scale
	scale = Vector2(1, 1)

# Called every singe frame 'delta' time account for frame rate diff
# It is the elapsed time since the previous frame
func _process(delta):
	position += Vector2(0, .75) * 60 * delta
	rotation += (.5) * 3 * delta
