extends Node2D

func _on_ready() -> void:
	$player_1_tutorial_screen_sprite/p_1_tutorial_screen_animation.play("p_1_tutorial_walk")
	$object_tutorial_screen_sprite/object_tutorial_screen_animation.play("object_changing_tutorial_screen")
	$player_3_tutorial_screen_sprite/p_3_tutorial_screen_animation.play("p_3_tutorial_screen_walking")

func _on_tutorial_screen_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
