class_name StateTriangleDash
extends State

@export var self_parent : CharacterBody2D
@export var dash_speed : int = 1500

var target_position : Vector2
var is_dashing : bool

func enter():
	is_dashing = false

