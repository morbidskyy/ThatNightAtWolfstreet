extends CanvasModulate

var is_ready = true

func _on_ready() -> void:
	show()

func _input(_event):
	if Input.is_action_just_pressed("toggle_nv") and is_ready:
		hide()
		is_ready = false
		$"../nv_duration".start()

func _on_nv_duration_timeout() -> void:
	show()
	$"../nv_cooldown".start()

func _on_nv_cooldown_timeout() -> void:
	is_ready = true
