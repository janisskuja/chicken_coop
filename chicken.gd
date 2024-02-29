extends Node2D

@export var min_time_to_lay_an_egg: float = 0.1
@export var max_time_to_lay_an_egg: float = 3.0

@export var eggScene: PackedScene

func _on_timer_timeout():
	var egg = eggScene.instantiate()
	egg.rotate(randf_range(-0.9, 0.9))
	$Spawn.add_child(egg)
	
	$AnimationPlayer.play("lay_an_egg")
	
	$Timer.start(randf_range(min_time_to_lay_an_egg, max_time_to_lay_an_egg))
