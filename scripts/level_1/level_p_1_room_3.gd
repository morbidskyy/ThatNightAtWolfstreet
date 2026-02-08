extends Node2D


func _process(delta: float) -> void:
	pass


func _on_leave_room_body_entered(body: Node2D) -> void:
	if (body.name=='player1'):
		get_tree().change_scene_to_file("res://scenes/levels/level_1/level_p_1_room_2.tscn")
