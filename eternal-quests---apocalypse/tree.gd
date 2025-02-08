extends Node

var aquiredNodes := {}

func aquire_tree()->SceneTree:
	return get_tree()

func aquire_root()->Window:
	return aquire_tree().root

func aquire_node(nodeName:String)->Node:
	if is_instance_valid(aquiredNodes.get(nodeName,null)):
		return aquiredNodes[nodeName]
	else:
		aquiredNodes[nodeName] = aquire_tree().root.find_child(nodeName)
		return aquiredNodes[nodeName]
