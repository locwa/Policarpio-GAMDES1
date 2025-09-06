extends CharacterBody2D

@export var speed := 300
#called when the node enters the scentree for the first time
func _ready():
	#starting position
	position = Vector2(200,500)
	# ship scale
	scale =Vector2(.50,.50)
	# Called every single frame. 'delta' time account for frame rate differences
	
# it is the elapsed time since the previous frame
func _process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * speed
	move_and_slide()
