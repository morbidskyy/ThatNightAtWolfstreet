extends Node2D
const lines:Array[String]=[
	"Three friends started an amateur ghost hunting show.",
	"They visited many alleged haunted sites, but never managed to find any concrete proof.",
	"Overtime they started to believe that maybe the paranormal wasn't real after all",
	"Until they decided to visit the infamous Wolfstreet manor.",
	"Once they entered the house to their horror a real ghost appeared.",
	"And it definitely wasn't a friendly spirit.",
	"Suddenly they were covered in a creepy mist that made them lose consciousness.",
	"When they woke up they were separated and stuck on the different floors of the manor.",
	"The way out was a door missing a handle.",
	"They had no choice but to explore the place and look for it.",
]

func _ready() -> void:
	DialogueManager.start_dialogue(global_position,lines)
	await DialogueManager.dialogue_finished
	get_tree().change_scene_to_file("res://scenes/levels/level_1/level_p_1_room_1.tscn")
