extends Label


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var parent = get_parent()
	
	# Check if the parent has the metadata first
	if parent.has_meta("hp"):
		var current_hp = parent.get_meta("hp")
		
		# Update text safely
		text = str(current_hp)
		
		# Check death condition
		if current_hp < 0:
			parent.queue_free()
	else:
		# Debug: Print this to see if the metadata is missing
		print("Warning: HP metadata missing on parent node!")
		# Optional: Initialize it here if you want a fallback
		# parent.set_meta("hp", 10.0)
