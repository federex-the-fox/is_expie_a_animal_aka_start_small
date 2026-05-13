extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_pressed)
func _pressed() -> void:
	get_tree().paused = false
	var check = get_tree().current_scene.find_child("cc")
	
	# Check if the node exists AND if a checkpoint is set
	if check and check.ischeckpointthere:
		get_parent().get_parent().respawn()
