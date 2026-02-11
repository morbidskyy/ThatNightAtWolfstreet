extends StaticBody2D


func _on_player_2_child_entered_tree(node: Node) -> void:
	if Input.is_action_just_pressed("interact"):
		print("door")
