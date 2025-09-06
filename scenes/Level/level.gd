extends Node2D

func _on_medium_asteroid_timer_timeout() -> void:
	var asteroid_scene: PackedScene = load("res://scenes/Enemies/AsteroidMedium.tscn")
	#2. create an instance
	var asteroid = asteroid_scene.instantiate()
	#3. attach the node to the scene tree
	$Asteroids.add_child(asteroid)


func _on_small_asteroid_timer_timeout() -> void:
	var asteroid_scene: PackedScene = load("res://scenes/Enemies/AsteroidSmall.tscn")
	#2. create an instance
	var asteroid = asteroid_scene.instantiate()
	#3. attach the node to the scene tree
	$Asteroids.add_child(asteroid)


func _on_large_asteroid_timer_timeout() -> void:
	var asteroid_scene: PackedScene = load("res://scenes/Enemies/AsteroidLarge.tscn")
	#2. create an instance
	var asteroid = asteroid_scene.instantiate()
	#3. attach the node to the scene tree
	$Asteroids.add_child(asteroid)
