extends StaticBody2D

signal door_opened

func _onready():
	$cabinet_with_handle_player.play("cabinet_with_handle_sparkles")

var handle_taken = false
var in_door_zone = false

func _on_area_2d_body_entered(_body: CharacterBody2D) -> void:
	if handle_taken == false and Input.is_action_just_pressed("interact"):
		handle_taken = true
		print("handle picked up")

func _process(_delta: float) -> void:
	if handle_taken == true:
		if in_door_zone == true:
			$"../level_2_door/lvl_2_door_with_handle".show()
			if Input.is_action_just_pressed("interact"):
				print("door opened")
				emit_signal("door_opened")
				#get_tree().change_scene_to_file("res://scenes/levels/level_3/level_p3_room_1.tscn")

func _on_lvl_2_door_area_2d_body_entered(_body: CharacterBody2D) -> void:
	in_door_zone = true
	print("near door")

func _on_lvl_2_door_area_2d_body_exited(_body: CharacterBody2D) -> void:
	in_door_zone = false
	print("away from door")
