extends CharacterBody2D

@export var move_speed : int = 200

var player_position : Vector2
var target_direction : Vector2


func _process(delta):
	player_position = Gamedata.player_position
	
	velocity = Vector2(player_position - position).normalized() * move_speed
	
	move_and_slide()
	
	look_at(player_position)
