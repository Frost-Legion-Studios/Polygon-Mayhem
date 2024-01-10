extends Node

@export var initial_state : State

var current_state : State
var states : Dictionary

func _ready():
	for child in get_children():
		if child is State:
			states[child.name] = child
	if initial_state:
		initial_state.enter()
		current_state = initial_state

func _process(delta):
	if current_state:
		current_state.update(delta)


func _physics_process(delta):
	if current_state:
		current_state.physics_update(delta)
