extends CharacterBody2D

@export var move_speed : int = 250

var player_position : Vector2
var target_direction : Vector2


func _process(delta):
	player_position = Gamedata.player_position
	target_direction = (player_position - position).normalized()
	
	velocity = target_direction * move_speed
	
	move_and_slide()
	
	look_at(player_position)
