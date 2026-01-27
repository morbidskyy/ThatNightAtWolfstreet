extends Control

func _on_ready() -> void:
	$nv_animation.play("RESET")
	hide()
	
func _input(event):
	if event.is_action_pressed("toggle_nv"):
		$nv_animation.play("nv_animation")
		visible = !visible
