extends StaticBody2D

signal door_opened

var handle_taken = false
var in_door_zone = false

func _on_area_2d_body_entered(_body: CharacterBody2D) -> void:
	if handle_taken == false:
		handle_taken = true

func _process(_delta: float) -> void:
	if handle_taken == true:
		if in_door_zone == true:
			if Input.is_action_just_pressed("ui_accept"):
				print("door opened")
				emit_signal("door_opened")
