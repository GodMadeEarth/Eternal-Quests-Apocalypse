class_name CustomAnimator extends Node

signal animation_started

signal animation_finished

func play(name: StringName = &"", custom_speed: float = 1.0, from_end: bool = false):
	pass

func get_playing_speed(name: StringName = &"")-> float:
	return 0.0

func can_play_animation(name: StringName = &"")-> bool:
	return false

func is_playing_animation(name: StringName = &"")-> bool:
	return false

func pause():
	pass

func unpause():
	pass

func stop():
	pass
