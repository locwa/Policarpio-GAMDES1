extends Area2D

var speed: int
var rotation_speed: int
var direction_x: float

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
	
	speed = rng.randi_range(60,100)
	direction_x = rng.randf_range(-0.5, 0.5)
	rotation_speed = rng.randi_range(1, 5)

# Called every singe frame 'delta' time account for frame rate diff
# It is the elapsed time since the previous frame
func _process(delta):
	position += Vector2(direction_x, .75) * speed * delta
	rotation_degrees += rotation_speed * delta
