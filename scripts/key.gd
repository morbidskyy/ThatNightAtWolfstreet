extends StaticBody2D

signal door_open

var key_taken = false
var in_door = false

func _on_area_2d_body_entered(_body: CharacterBody2D):
	if key_taken == false:
		key_taken = true
		$sound_key_pickup.play()
		$key_sprite.queue_free()

func _process(_delta):
	if key_taken == true:
		if in_door == true:
			if Input.is_action_just_pressed("interact"):
				$sound_door_open.play()
				emit_signal("door_open")
				get_tree().change_scene_to_file("res://scenes/levels/level_3/level_p_3_room_left.tscn")


func _on_room_transition_left_body_entered(_body: CharacterBody2D):
	in_door = true


func _on_room_transition_left_body_exited(_body: CharacterBody2D):
	in_door = false
