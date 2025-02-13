# @trait(alias=SnappedTransformTrait)
class_name SnappedTransformTrait extends TransformTrait

@export var _snapValue:float =  1
var _leftoverPosition:Vector2 = Vector2.ZERO

func set_position(value:Vector2):
	receiver.position = (value + _leftoverPosition).snappedf(_snapValue)
	
	_leftoverPosition = (value + _leftoverPosition) - (value + _leftoverPosition).snappedf(_snapValue)

func set_snap(value:float):
	_snapValue = value

func get_snap():
	return _snapValue
