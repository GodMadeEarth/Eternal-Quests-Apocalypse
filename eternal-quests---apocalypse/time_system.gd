extends System

var systemState:SystemState = SystemState.IDLE

enum SystemState{
	IDLE,
	PLAYING,
	PAUSED,
	FINISHED
}

var timer:SceneTreeTimer
var pausedTime:float = 0.0

func _physics_process(delta: float) -> void:
	for entity in query():
		execute(entity)

func execute(entity:Node):
	
	match systemState:
		SystemState.IDLE:
			if Tag.has_tag(Tag.Tags.START,entity) and GTraits.as_button_trait(entity).is_pressed():
				systemState = SystemState.PLAYING
				timer = get_tree().create_timer(Settings.get_work_length())
		SystemState.PLAYING:
			if Tag.has_tag(Tag.Tags.PAUSE,entity) and GTraits.as_button_trait(entity).is_pressed():
				systemState = SystemState.PAUSED
				pausedTime = timer.time_left
				
		SystemState.PAUSED:
			if Tag.has_tag(Tag.Tags.PLAY,entity) and GTraits.as_button_trait(entity).is_pressed():
				systemState = SystemState.PLAYING
				timer = get_tree().create_timer(pausedTime)

	
	
	if Tag.has_tag(Tag.Tags.TIMER,entity):
		match systemState:
			SystemState.IDLE:
				entity.find_child("Minutes Label").text = str(int(Settings.get_work_length()) / 60 / 10) + str(int(Settings.get_work_length()) / 60 % 10) + ":"
				entity.find_child("Seconds Label").text = ":" + str(int(Settings.get_work_length()) % 60 / 10) +  str(int(Settings.get_work_length()) % 60 % 10)
			SystemState.FINISHED:
				entity.find_child("Minutes Label").text = str(int(0) / 60 / 10) + str(int(0) / 60 % 10) + ":"
				entity.find_child("Seconds Label").text = ":" + str(int(0) % 60 / 10) +  str(int(0) % 60 % 10)
			SystemState.PLAYING:
				entity.find_child("Minutes Label").text = str(int(timer.time_left) / 60 / 10) + str(int(timer.time_left) / 60 % 10) + ":"
				entity.find_child("Seconds Label").text = ":" + str(int(timer.time_left) % 60 / 10) +  str(int(timer.time_left) % 60 % 10)
