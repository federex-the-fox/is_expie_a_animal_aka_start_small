extends Area2D
@export var cam: Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(_on_body_entered)
func _on_body_entered(body) -> void:
	if body.get_meta("plr"):
		for camb in get_tree().current_scene.get_children(true):
				if camb is Camera2D:
					camb.enabled = false
		cam.enabled = true
		
