class_name AnimationMapper

static func animation_started(node:Node, name: StringName = &"")-> Signal:
	
	if node is AnimatedSprite2D and can_play_animation(node,name):
		return node.animation_changed
	elif node is AnimationPlayer and can_play_animation(node,name):
		return node.animation_changed
	elif node is CustomAnimator and can_play_animation(node,name):
		return node.animation_started
	
	return node.tree_exited

static func animation_finished(node:Node, name:StringName = &"")-> Signal:
	if node is AnimatedSprite2D and can_play_animation(node,name):
		return node.animation_finished
	elif node is AnimationPlayer and can_play_animation(node,name):
		return node.animation_finished
	elif node is CustomAnimator and can_play_animation(node,name):
		return node.animation_finished
	
	return node.tree_exited

static func play_animation(node:Node, name: StringName = &"", custom_speed: float = 1.0, from_end: bool = false):
	if node is AnimatedSprite2D:
		node.play(name,custom_speed,from_end)
	elif node is AnimationPlayer:
		node.play(name,-1,custom_speed,from_end)
	elif node is CustomAnimator:
		node.play(name,custom_speed,from_end)

static func get_animation_playing_speed(node:Node ,name: StringName = &"")-> float:
	if node is AnimatedSprite2D:
		if AnimationMapper.can_play_animation(node,name):
			return node.get_playing_speed()
	elif node is AnimationPlayer:
		if AnimationMapper.can_play_animation(node,name):
			return node.get_playing_speed()
	elif node is CustomAnimator:
		if AnimationMapper.can_play_animation(node,name):
			return node.get_playing_speed(name)
	
	return 0.0

static func can_animate(node:Node)-> bool:
	if node is AnimatedSprite2D:
		return true
	elif node is AnimationPlayer:
		return true
	elif node is CustomAnimator:
		return true
	
	return false

static func can_play_animation(node:Node, name: StringName = &"")-> bool:
	if node is AnimatedSprite2D:
		return node.sprite_frames.has_animation(name)
	elif node is AnimationPlayer:
		return node.has_animation(name) 
	elif node is CustomAnimator:
		return node.can_play_animation(name)
	
	
	return false

static func is_playing_animation(node:Node, name: StringName = &"")-> bool:
	if node is AnimatedSprite2D:
		return node.animation == name and node.is_playing()
	elif node is AnimationPlayer:
		return node.current_animation == name and node.is_playing()
	elif node is CustomAnimator:
		return node.is_playing_animation(name)
	
	return false

static func pause_animation(node:Node, name: StringName = &""):
	if node is AnimatedSprite2D:
		if AnimationMapper.is_playing_animation(node,name):
			node.pause()
	elif node is AnimationPlayer:
		if AnimationMapper.is_playing_animation(node,name):
			node.pause()
	elif node is CustomAnimator:
		if AnimationMapper.is_playing_animation(node,name):
			node.pause()

static func unpause_animation(node:Node, name: StringName = &""):
	if node is AnimatedSprite2D:
		if AnimationMapper.is_playing_animation(node,name):
			node.play()
	elif node is AnimationPlayer:
		if AnimationMapper.is_playing_animation(node,name):
			node.play()
	elif node is CustomAnimator:
		if AnimationMapper.is_playing_animation(node,name):
			node.unpause()

static func stop_animation(node:Node, name: StringName = &""):
	if node is AnimatedSprite2D:
		if AnimationMapper.is_playing_animation(node,name):
			node.stop()
	elif node is AnimationPlayer:
		if AnimationMapper.is_playing_animation(node,name):
			node.stop()
	elif node is CustomAnimator:
		if AnimationMapper.is_playing_animation(node,name):
			node.stop()
