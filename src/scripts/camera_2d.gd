extends Camera2D
var player : CharacterBody2D = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	player = get_tree().current_scene.find_child("Player", true, false) as CharacterBody2D 
	global_position = global_position.lerp(player.position , delta * 3)
	if Input.is_action_just_pressed("zoom_in"):
		zoom = zoom * 1.5
		print(zoom)
	if Input.is_action_just_pressed("zoom_out") and not zoom <= Vector2(0.75,0.75):
		zoom = zoom * 0.5
		print(zoom)
