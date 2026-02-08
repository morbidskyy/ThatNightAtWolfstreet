extends Area2D

func _on_body_entered(_body: CharacterBody2D):
	get_tree().change_scene_to_file("res://scenes/levels/level_3/level_p_3_room_left.tscn")
