class_name StateTriangleDash
extends State


@export var self_parent : CharacterBody2D
@export var dash_speed : int = 1500

var target_position : Vector2
var is_dashing : bool


func enter():
	is_dashing = false


func update(_delta):
	if is_dashing == false:
		is_dashing = true
		#Charge time
		self_parent.velocity = Vector2.ZERO
		await get_tree().create_timer(0.6).timeout
		
		#Dash length
		self_parent.velocity = (Vector2(cos(self_parent.rotation), 
		sin(self_parent.rotation))) * dash_speed
		
		await get_tree().create_timer(0.4).timeout
		#Cooldown
		self_parent.velocity = Vector2.ZERO
		await get_tree().create_timer(0.8).timeout
		transitioned.emit(self, "StateTriangleFollow")
		
	self_parent.move_and_slide()
