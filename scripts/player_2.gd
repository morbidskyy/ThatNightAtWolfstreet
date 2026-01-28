extends CharacterBody2D

@onready var animation_p2: AnimationPlayer = $player2_sprite/player2_animation

var speed : int = 250


func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
	if velocity.length() > 0:
		$flashlight.rotation = velocity.angle() - 90

@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		animation_p2.play("player2_walking_up")
	elif Input.is_action_pressed("ui_down"):
		animation_p2.play("player2_walking_down")
	elif Input.is_action_pressed("ui_right"):
		animation_p2.play("player2_walking_right")
	elif Input.is_action_pressed("ui_left"):
		animation_p2.play("player2_walking_left")
	else:
		animation_p2.play("player2_idle")
