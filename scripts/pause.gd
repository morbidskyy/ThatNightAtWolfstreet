extends Control

func _on_ready() -> void:
	$AnimationPlayer.play("RESET")
	hide()

func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")

func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()

func test_esc():
	if Input.is_action_just_pressed("ui_cancel") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("ui_cancel") and get_tree().paused == true:
		resume()

func _process(delta: float) -> void:
	test_esc()

func _on_resume_pressed() -> void:
	resume()

func _on_start_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
