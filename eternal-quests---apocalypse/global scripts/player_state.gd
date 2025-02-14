extends Node

var currentState:States = States.IDLE

enum States{
	IDLE,
	WALKING
}

func get_current_state():
	return currentState

func is_current_state(state:States):
	return currentState == state

func set_current_state(state:States):
	currentState = state
