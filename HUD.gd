extends CanvasLayer

func _process(delta):
	$Control/HBoxContainer/Score.text = str(GameManager.score)
