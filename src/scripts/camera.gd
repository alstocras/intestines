extends Camera2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("zoomIn"):
		zoom *= Vector2(0.8, 0.8)
	if Input.is_action_just_pressed("zoomOut"):
		zoom *= Vector2(1.2, 1.2)
	zoom = zoom.clamp(Vector2(0.7, 0.7), Vector2(3, 3))
