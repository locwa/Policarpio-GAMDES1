extends Node2D

var rng = RandomNumberGenerator.new()
var sizes = ["Small", "Medium", "Large"]

var asteroid_path : String = "res://scenes/Enemies/Asteroid" + sizes[rng.randi_range(0, 2)] + ".tscn"
var asteroid_scene: PackedScene = load(asteroid_path)

func ready() -> void:
	rng.randomize()
	#2. create an instance
	var asteroid = asteroid_scene.instantiate()
	#3. attach the node to the scene tree
	$Asteroids.add_child(asteroid)


func _on_small_asteroid_timer_timeout() -> void:
	rng.randomize()
	asteroid_path= "res://scenes/Enemies/Asteroid" + sizes[rng.randi_range(0, 2)] + ".tscn"
	asteroid_scene = load(asteroid_path)
	#2. create an instance
	print(asteroid_path)
	var asteroid = asteroid_scene.instantiate()
	#3. attach the node to the scene tree
	$Asteroids.add_child(asteroid)
	
