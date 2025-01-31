extends System

func _physics_process(delta: float) -> void:
	for entity in get_tree().get_nodes_in_group("Entities"):
		if Tag.has_tag(Tag.Tags.TIMER,entity):
			execute(entity)

func execute(entity:Node):
	var minutesLabel : Label = entity.find_child("Minutes Label")
	var secondsLabel : Label = entity.find_child("Seconds Label")
	
	var minutes = Time.get_ticks_msec() / 60000
	var seconds = (Time.get_ticks_msec() / 1000) % 60
	
	minutesLabel.text = ("" if minutes > 9 else "0") + str(minutes) + ":"
	secondsLabel.text = ":" + ("" if seconds > 9 else "0") + str(seconds)

	
