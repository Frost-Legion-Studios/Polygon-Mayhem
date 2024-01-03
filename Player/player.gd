extends CharacterBody2D


@export var speed : int = 300

var direction : Vector2 = Vector2.ZERO

func _process(delta):
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	velocity = direction.normalized() * speed
	move_and_slide()
