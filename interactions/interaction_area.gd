extends Area2D
class_name interaction_area

@export var action_name: String = "Interact"

var interact: Callable = func():
	pass

func _on_body_entered(body: Node2D) -> void:
	InteractionManager.register_Area(self)


func _on_body_exited(body: Node2D) -> void:
	InteractionManager.unregister_area(self)
