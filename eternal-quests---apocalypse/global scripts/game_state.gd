extends Node

var currentState:States = States.INACTIVE_STATE

enum States{
	UNKOWN,
	ACTIVE_STATE,
	INACTIVE_STATE,
	PAUSED_STATE,
	MAIN_MENU,
	SETTINGS_STATE,
}


func get_current_state():
	return currentState

func is_current_state(state:States):
	return currentState == state

func set_current_state(state:States):
	currentState = state
