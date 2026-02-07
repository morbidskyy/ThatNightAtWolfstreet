extends Control

var is_ready = true

func _on_ready() -> void:
	$nv_animation.play("RESET")
	hide()
	
func _input(_event):
	if Input.is_action_just_pressed("toggle_nv") and is_ready:
		is_ready = false
		$"../nv_duration".start()
		$nv_animation.play("nv_animation")
		show()
		$"../nv_cooldown".start()

func _on_nv_duration_timeout() -> void:
	hide()

func _on_nv_cooldown_timeout() -> void:
	is_ready = true
