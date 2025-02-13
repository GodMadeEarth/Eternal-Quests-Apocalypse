class_name Tag
extends Node

@export var tag:Tags = Tags.NULL

enum Tags{
	NULL,
	UI,
	TIMER,
	PLAY,
	PAUSE,
	START,
	PLAYER
}

static func has_tag(tag:Tags,object:Node):
	return object.get_children().any(func(a:Node): 
		return a is Tag and a.tag == tag
		)

static func add_tag(tag:Tags,object:Node):
	if not has_tag(tag,object):
		var _tag:Tag = Tag.new()
		_tag.tag = tag
		object.add_child(_tag)

static func remove_tag(tag:Tags,object:Node):
	for child in object.get_children():
		if child is Tag and child.tag == tag:
			child.queue_free()
			break
