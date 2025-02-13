class_name System
extends Node

func query()->Array[Entity]:
	var entities:Array[Entity] ; entities.assign(get_tree().get_nodes_in_group("Entities"))
	entities = entities.filter(func(a:Entity):return a.has_ansestor(get_parent()))
	return entities

func _physics_process(delta: float) -> void:
	for entity in query():
		execute(entity,delta)

func execute(entity:Node,delta:float):
	pass
