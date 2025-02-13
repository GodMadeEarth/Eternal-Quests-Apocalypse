#@trait
class_name AnimationTrait
extends Trait

var receiver:Node2D

var animators:Array[Node]

func _initialize(_receiver) -> void:
	receiver = _receiver
	
	for animator in receiver.get_children():
		if AnimationMapper.can_animate(animator):
			animators.append(animator)
	


signal animation_started(name: StringName)
signal animation_finished(name: StringName)

func play_animation(name: StringName = &"", custom_speed: float = 1.0, from_end: bool = false):
	animation_started.emit(name)
	
	for animator in animators:
		if AnimationMapper.can_play_animation(animator,name):
			AnimationMapper.play_animation(animator,name,custom_speed,from_end)
	
	for animator in animators:
		if AnimationMapper.is_playing_animation(animator,name):
			await AnimationMapper.animation_finished(animator,name)
	
	animation_finished.emit(name) 

func is_playing_animation(name: StringName = &""):
	for animator in animators:
		if AnimationMapper.is_playing_animation(animator,name):
			return true
	return false

func pause_animation(name: StringName = &""):
	for animator in animators:
		if AnimationMapper.is_playing_animation(animator,name):
			AnimationMapper.pause_animation(animator,name)

func unpause_animation(name: StringName = &""):
	for animator in animators:
		if AnimationMapper.is_playing_animation(animator,name):
			AnimationMapper.unpause_animation(animator,name)

func stop_animation(name: StringName = &""):
	for animator in animators:
		if AnimationMapper.is_playing_animation(animator,name):
			AnimationMapper.stop_animation(animator,name)
