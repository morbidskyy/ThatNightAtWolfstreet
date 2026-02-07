extends CanvasModulate

var is_ready = true

func _on_ready() -> void:
	show()

func _input(event):
	if event.is_action_pressed("toggle_nv"):
		is_ready = false
		$"../nv_cooldown".start()
		hide()


func _on_nv_cooldown_timeout():
	is_ready = true
	show()
