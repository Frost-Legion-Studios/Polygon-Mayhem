extends CharacterBody2D


@export var walk_speed : int = 300
@export var sprint_speed : int = 600

var direction : Vector2 = Vector2.ZERO

func _process(delta):
	
	look_at(get_global_mouse_position())
	
	move()


func move():
	
	direction = Input.get_vector("ui_left", "ui_right","ui_up", "ui_down")
	
	if Input.is_action_pressed("ui_accept"):
		velocity = direction * sprint_speed
	else:
		velocity = direction * walk_speed
	
	move_and_slide()
