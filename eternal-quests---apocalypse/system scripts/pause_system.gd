extends System

func _physics_process(delta: float) -> void:
	
	get_parent().visible = GameState.is_current_state(GameState.States.PAUSED_STATE)
	
	

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("pause_game"):
		if GameState.is_current_state(GameState.States.PAUSED_STATE):
			GameState.set_current_state(GameState.get_previous_state())
		else:
			GameState.set_current_state(GameState.States.PAUSED_STATE)
	

func execute(entity:Node,delta:float):
	pass
