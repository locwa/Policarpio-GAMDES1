extends Area2D

func _on_body_entered(body):
	print('body entered')
	print(body.name)

# Function when the node enters the scenetree for the first time
func _ready():
	var rng = RandomNumberGenerator.new()
	var width = get_viewport().get_visible_rect().size[0]
	
	var random_x = rng.randi_range(0, width)
	var random_y = rng.randi_range(-90, -50)
	# Starting position
	position = Vector2(random_x,random_y)
	# Ship Scale
	scale = Vector2(1, 1)

# Called every singe frame 'delta' time account for frame rate diff
# It is the elapsed time since the previous frame
func _process(delta):
	position += Vector2(0, .75) * 60 * delta
	rotation += (.5) * 3 * delta
