extends Node2D

@onready var interaction_area: InteractionArea = $interaction_area

const lines: Array[String] = [
	"...the floors in the next room seem unstable... (the rest is illegible)"
]


func _ready():
	interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
	DialogueManager.start_dialogue(global_position, lines)
	await DialogueManager._on_text_box_finished_displaying()
