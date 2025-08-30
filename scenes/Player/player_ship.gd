extends Node2D

# Function when the node enters the scenetree for the first time
func _ready():
	# Starting position
	position = Vector2(200,570)
	
	# Ship Scale
	scale = Vector2(1, 1)

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		print("hit")

# Called every singe frame 'delta' time account for frame rate diff
# It is the elapsed time since the previous frame
func _process(delta):
	if Input.is_action_pressed("move_right"):
		if self.position.x < 397:
			position+= Vector2(1, 0) * 120 * delta
	if Input.is_action_pressed("move_left"):
		if self.position.x > 3:
			position+= Vector2(-1, 0) * 120 * delta
	if Input.is_action_pressed("move_up"):
		if self.position.y  >= 10:
			position+= Vector2(0, -1) * 120 * delta
	if Input.is_action_pressed("move_down"):
		if self.position.y <= 590:
			position+= Vector2(0, 1) * 120 * delta
