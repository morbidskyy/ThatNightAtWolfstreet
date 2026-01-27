extends Control

func _on_ready() -> void:
	$nv_animation.play("RESET")
	hide()
	
func _input(_event):
	if Input.is_action_just_pressed("toggle_nv"):
		$nv_animation.play("nv_animation")
		show()
