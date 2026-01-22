extends VBoxContainer

func _on_resume_pressed() -> void:
	pass # Replace with function body.

func _on_pause_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")

func _on_start_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
