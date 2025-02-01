@tool
class_name Entity
extends Node2D

func _enter_tree() -> void:
	add_to_group("Entities")

func has_ansestor(ancestor:Node):
	var parent:Node = self
	
	while parent != get_tree().root:
		parent = parent.get_parent()
		if parent == ancestor:
			return true
	
	return false
