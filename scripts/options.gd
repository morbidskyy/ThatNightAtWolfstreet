extends VBoxContainer

func _on_language_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/language_options.tscn")

func _on_sound_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/sound_options.tscn")

func _on_options_return_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
