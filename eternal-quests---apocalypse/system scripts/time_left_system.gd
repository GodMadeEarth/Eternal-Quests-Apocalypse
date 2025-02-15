extends System

var systemState:States = States.IDLE

enum States{
	IDLE,
	PLAYING,
	PAUSED,
	FINISHED
}

var timer:SceneTreeTimer
var pausedTime:float = 0.0

func _physics_process(delta: float) -> void:
	match systemState:
		States.IDLE:
			if GameState.is_current_state(GameState.States.INACTIVE_STATE):
				systemState = States.PLAYING
				timer = get_tree().create_timer(Settings.get_work_length() + 1)
			elif GameState.is_current_state(GameState.States.ACTIVE_STATE):
				systemState = States.PLAYING
				timer = get_tree().create_timer(Settings.get_play_length() + 1)
			
		States.PLAYING:
			if GameState.is_current_state(GameState.States.PAUSED_STATE):
				systemState = States.PAUSED
				pausedTime = timer.time_left
			elif not (GameState.is_current_state(GameState.States.INACTIVE_STATE) or GameState.is_current_state(GameState.States.ACTIVE_STATE)):
				get_parent().visible = false
				systemState = States.PAUSED
				pausedTime = timer.time_left
			
			if timer.time_left == 0:
				systemState = States.FINISHED
			
		States.PAUSED:
			if (GameState.is_current_state(GameState.States.INACTIVE_STATE) or GameState.is_current_state(GameState.States.ACTIVE_STATE)):
				get_parent().visible = true
				systemState = States.PLAYING
				timer = get_tree().create_timer(pausedTime)
			
		States.FINISHED:
			if GameState.is_current_state(GameState.States.INACTIVE_STATE):
				GameState.set_current_state(GameState.States.ACTIVE_STATE)
				systemState = States.IDLE
			elif GameState.is_current_state(GameState.States.ACTIVE_STATE):
				GameState.set_current_state(GameState.States.INACTIVE_STATE)
				systemState = States.IDLE

	
	for entity in query():
		execute(entity,delta)
	
	

func execute(entity:Node,delta:float):
	
	if Tag.has_tag(Tag.Tags.TIMER,entity):
		match systemState:
			States.IDLE:
				entity.find_child("Minutes Label").text = str(int(Settings.get_work_length()) / 60 / 10) + str(int(Settings.get_work_length()) / 60 % 10) + ":"
				entity.find_child("Seconds Label").text = ":" + str(int(Settings.get_work_length()) % 60 / 10) +  str(int(Settings.get_work_length()) % 60 % 10)
			States.FINISHED:
				entity.find_child("Minutes Label").text = str(int(0) / 60 / 10) + str(int(0) / 60 % 10) + ":"
				entity.find_child("Seconds Label").text = ":" + str(int(0) % 60 / 10) +  str(int(0) % 60 % 10)
			States.PLAYING:
				entity.find_child("Minutes Label").text = str(int(timer.time_left) / 60 / 10) + str(int(timer.time_left) / 60 % 10) + ":"
				entity.find_child("Seconds Label").text = ":" + str(int(timer.time_left) % 60 / 10) +  str(int(timer.time_left) % 60 % 10)
