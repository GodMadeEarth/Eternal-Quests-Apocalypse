class_name System
extends Node

func _physics_process(delta: float) -> void:
	for entity in get_tree().get_nodes_in_group("Entities"):
		execute(entity)

func execute(entity:Node):
	pass
