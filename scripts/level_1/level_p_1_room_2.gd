extends Node2D

var current_scene="room_1"
var change_scene=false

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

#back to room 1
func _on_change_room_body_entered(body: Node2D) -> void:
	if (body.name=='player1'):
		get_tree().change_scene_to_file("res://scenes/levels/level_1/level_p_1_room_1.tscn")


func _on_cange_room_3_body_entered(body: Node2D) -> void:
	if (body.name=='player1'):
		get_tree().change_scene_to_file("res://scenes/levels/level_1/level_p_1_room_3.tscn")
		

func _on_leave_to_room_4_body_entered(body: Node2D) -> void:
	if (body.name=='player1'):
		get_tree().change_scene_to_file("res://scenes/levels/level_1/level_p_1_room_4.tscn")
