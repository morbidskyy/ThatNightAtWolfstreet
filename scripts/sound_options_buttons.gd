extends VBoxContainer

func _on_language_options_return_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")
