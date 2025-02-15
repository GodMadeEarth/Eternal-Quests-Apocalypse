extends System

func _physics_process(delta: float) -> void:
	
	if PlayerState.is_current_state(PlayerState.States.WALKING):
		for entity in query():
			if Tag.has_tag(Tag.Tags.PLAYER,entity):
				execute(entity,delta)

func execute(entity:Node,delta:float):
	if GameState.is_current_state(GameState.States.INACTIVE_STATE):
		GTraits.as_animation_trait(entity).play_animation("on_walk")
		GTraits.as_animation_trait(entity).play_animation("on_right")
	elif GameState.is_current_state(GameState.States.PAUSED_STATE) and GameState.is_previous_state(GameState.States.INACTIVE_STATE):
		GTraits.as_animation_trait(entity).play_animation("on_idle")
		GTraits.as_animation_trait(entity).play_animation("on_right")
