extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(_pressed)
func _pressed() -> void:
	get_tree().current_scene.find_child("main").visible = false
	get_tree().current_scene.find_child("diff").visible = true
