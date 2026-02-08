extends Node2D

@onready var animation_sparkle: AnimationPlayer=$animation_spark
@onready var interactionArea: InteractionArea = $interaction_area

func _ready() -> void:
	interactionArea.interact = Callable(self,"_on_interact")

func _on_interact():
	print("yay dziala :D")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	animation_sparkle.play("sparkle_animaton")
