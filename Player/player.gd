extends CharacterBody2D


@export var speed : int = 300

var direction : Vector2 = Vector2.ZERO

func _process(delta):
	direction = Input.get_vector("ui_left", "ui_right","ui_up", "ui_down")
	velocity = direction * speed
	print(velocity)
	move_and_slide()
