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
	if not GameState.is_current_state(GameState.States.INACTIVE_STATE): return
	
	for entity in query():
		execute(entity,delta)
	
	if systemState == States.FINISHED:
		GameState.set_current_state(GameState.States.ACTIVE_STATE)

func execute(entity:Node,delta:float):
	
	match systemState:
		States.IDLE:
			if Tag.has_tag(Tag.Tags.PLAY,entity) and GTraits.as_button_trait(entity).is_pressed():
				systemState = States.PLAYING
				timer = get_tree().create_timer(Settings.get_work_length())
		States.PLAYING:
			if Tag.has_tag(Tag.Tags.PAUSE,entity) and GTraits.as_button_trait(entity).is_pressed():
				systemState = States.PAUSED
				pausedTime = timer.time_left
				
		States.PAUSED:
			if Tag.has_tag(Tag.Tags.PLAY,entity) and GTraits.as_button_trait(entity).is_pressed():
				systemState = States.PLAYING
				timer = get_tree().create_timer(pausedTime)

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
