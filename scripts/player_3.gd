extends CharacterBody2D

@onready var animation_p3: AnimationPlayer = $player3_sprite/animation_p3

var speed : int = 150


func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		animation_p3.play("p3_back_walk")
	elif Input.is_action_pressed("ui_down"):
		animation_p3.play("p3_front_walk")
	elif Input.is_action_pressed("ui_right"):
		animation_p3.play("p3_right_walk")
	elif Input.is_action_pressed("ui_left"):
		animation_p3.play("p3_left_walk")
	else:
		animation_p3.play("p3_idle")

	
