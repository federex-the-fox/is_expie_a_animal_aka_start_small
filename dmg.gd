extends Area2D
@export var dmg: float = 25



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body_entered.connect(_on_body_entered)
func _on_body_entered(body) -> void:
	if body.get_meta("plr"):
		body.dmg(dmg)
	elif body.get_meta("hp"):
		body.set_meta("hp", body.get_meta("hp") - dmg)
