#@trait
class_name TransformTrait
extends Trait


var receiver:Node2D



func _initialize(_receiver) -> void:
	receiver = _receiver

func set_position(value:Vector2):
	receiver.position = value

func get_position()->Vector2:
	return receiver.position

func add_position(value:Vector2):
	set_position(get_position() + value)
