#@trait
class_name AnimationTrait
extends Trait

#signal pressed

var receiver:Node2D

var animators:Array[Node]

func _initialize(_receiver) -> void:
	receiver = _receiver
	#buttons.assign(receiver.find_children("","Button"))
	for animator in receiver.find_children("",""):
		if animator.has_method("play"):
			animators.append(animator)


signal animation_started(name: StringName)
signal animation_finished(name: StringName)

func play_animation(name: StringName = &"", custom_speed: float = 1.0, from_end: bool = false):
	pass

func get_animation_playing_speed(name: StringName = &""):
	pass 

func is_playing_animation(name: StringName = &""):
	pass 

func pause_animation(name: StringName = &""):
	pass

func stop_animation(name: StringName = &""):
	pass
