extends RigidBody2D

var is_clicked: bool = false

func _on_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed and !is_clicked):
		is_clicked = true
		
		GameManager.add_score(1)
		
		$AnimationPlayer.play("clicked")
		await $AnimationPlayer.animation_finished
		queue_free()
