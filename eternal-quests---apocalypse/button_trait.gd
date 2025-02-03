#@trait
class_name ButtonTrait
extends Trait

signal pressed

var receiver:Node2D
var buttons:Array[Button]

func _initialize(_receiver) -> void:
	receiver = _receiver
	buttons.assign(receiver.find_children("","Button"))
	for button in buttons:
		button.pressed.connect(func():pressed.emit())

func is_pressed():
	return buttons.any(func(a:Button):return a.button_pressed)
