class_name StateTriangleFollow
extends State

@export var self_parent : CharacterBody2D
@export var speed : int = 330

var target_position : Vector2
var can_dash : bool = true

@onready var timer : Timer = self_parent.get_node("Timer")


func update(_delta : float):
	target_position = Gamedata.player_position
	self_parent.look_at(target_position)
	
	self_parent.velocity = (target_position-self_parent.position).normalized() * speed
	self_parent.move_and_slide()
	
	in_dash_range(target_position, self_parent.position)



func in_dash_range(target, parent):
	if parent.distance_to(target) < 250 && can_dash == true:
		can_dash = false
		timer.start()
		transitioned.emit(self, "StateTriangleDash")


func _on_timer_timeout():
	can_dash = true
