extends CharacterBody2D

var speed : int = 250

@onready var animation_p1: AnimationPlayer=$player1_sprite/Animation_Player1

func get_input():
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed

func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_up"):
		animation_p1.play("p1_walk_back")
	elif Input.is_action_pressed("ui_down"):
		animation_p1.play("p1_walk_frwd")
	elif Input.is_action_pressed("ui_right"):
		animation_p1.play("p1_walk_right")
	elif Input.is_action_pressed("ui_left"):
		animation_p1.play("p1_walk_left")
	else:
		animation_p1.play("p1_idle")
