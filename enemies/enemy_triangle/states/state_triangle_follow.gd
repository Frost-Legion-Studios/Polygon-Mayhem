class_name StateTriangleFollow
extends State

@export var self_parent : CharacterBody2D
@export var speed : int = 330

var target_position : Vector2


func update(_delta : float):
	target_position = Gamedata.player_position
	self_parent.look_at(target_position)
	
	self_parent.velocity = (target_position-self_parent.position).normalized() * speed
	self_parent.move_and_slide()
	
	in_dash_range(target_position, self_parent.position)



func in_dash_range(target, parent):
	if self_parent.position.distance_to(target) < 250:
		transitioned.emit(self, "StateTriangleDash")
