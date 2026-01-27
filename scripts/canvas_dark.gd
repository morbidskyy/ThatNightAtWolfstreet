extends CanvasModulate


# Called when the node enters the scene tree for the first time.
func _on_ready() -> void:
	show()

func _input(event):
	if event.is_action_pressed("toggle_nv"):
		visible = !visible
