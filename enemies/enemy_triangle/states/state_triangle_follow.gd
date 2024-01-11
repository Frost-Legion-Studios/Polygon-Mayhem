class_name StateTriangleFollow
extends State

@export var self_parent : CharacterBody2D
@export var speed : int = 250
var target_position : Vector2


func update(_delta : float):
	target_position = Gamedata.player_position
	self_parent.look_at(target_position)
	
