extends System

func _physics_process(delta: float) -> void:
	if GameState.is_current_state(GameState.States.ACTIVE_STATE):
		for entity in query():
			if Tag.has_tag(Tag.Tags.PLAYER,entity):
				execute(entity,delta)

func execute(entity:Node,delta:float):
	
	var inputVect := Vector2.ZERO
	inputVect.x = int(Input.is_key_pressed(KEY_D)) - int(Input.is_key_pressed(KEY_A))
	inputVect.y = int(Input.is_key_pressed(KEY_S)) - int(Input.is_key_pressed(KEY_W)) 
	inputVect = inputVect.normalized()
	
	
	var moveVect := inputVect * delta * 100
	
	GTraits.as_transform_trait(entity).add_position(moveVect)
	
	
	
		 
	
	if inputVect.is_zero_approx():
		GTraits.as_animation_trait(entity).play_animation("on_idle")
	else:
		GTraits.as_animation_trait(entity).play_animation("on_walk")
		
		if inputVect.x > 0:
			GTraits.as_animation_trait(entity).play_animation("on_right")
		elif inputVect.x < 0:
			GTraits.as_animation_trait(entity).play_animation("on_left")
		elif inputVect.y < 0:
			GTraits.as_animation_trait(entity).play_animation("on_up")
		else:
			GTraits.as_animation_trait(entity).play_animation("on_down")
