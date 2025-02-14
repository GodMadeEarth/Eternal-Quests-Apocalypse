## Todo:
# Turn Into An Extention For the Animation Trait

extends CustomAnimator

@export var suffix = "on_idle"
@export var prefix = "on_down"

@export var suffixes = ["on_idle","on_hurt","on_die","on_walk"]
@export var prefixes = ["on_down","on_up","on_left","on_right"]

func play(name: StringName = &"", custom_speed: float = 1.0, from_end: bool = false):
	if name == "on_left": 
		name = "on_right"
		get_parent().flip_h = true
	elif name in prefixes:
		get_parent().flip_h = false
	
	if name in suffixes: suffix = name
	if name in prefixes: prefix = name
	
	AnimationMapper.play_animation(get_parent(),suffix+"_"+prefix,custom_speed,from_end)

func get_playing_speed(name: StringName = &"")-> float:
	if name == "on_left": name = "on_right"
	
	if name in [prefix,suffix,suffix+"_"+prefix]:
		return AnimationMapper.get_animation_playing_speed(get_parent(),suffix+"_"+prefix)
	return 0.0

func can_play_animation(name: StringName = &"")-> bool:
	
	if name in suffixes+prefixes:
		
		if name == "on_left": name = "on_right"
		
		if name in suffixes:
			return AnimationMapper.can_play_animation(get_parent(),name+"_"+prefix)
		elif name in prefixes:
			return AnimationMapper.can_play_animation(get_parent(),suffix+"_"+name)
	
	return false

func is_playing_animation(name: StringName = &"")-> bool:
	if name == "on_left": name = "on_right"
	
	if name in [prefix,suffix,suffix+"_"+prefix]:
		return AnimationMapper.is_playing_animation(get_parent(),suffix+"_"+prefix)
	return false

func pause():
	AnimationMapper.pause_animation(get_parent(),suffix+"_"+prefix)

func unpause():
	AnimationMapper.unpause_animation(get_parent(),suffix+"_"+prefix)

func stop():
	AnimationMapper.stop_animation(get_parent(),suffix+"_"+prefix)
