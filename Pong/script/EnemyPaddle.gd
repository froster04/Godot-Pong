extends KinematicBody2D


export (int)var speed = 300
var velocity = Vector2()
var ball

func _ready():
	ball = get_parent().find_node("Ball")

func get_opponent_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y: return 1
		else: return -1
	else: return 0

func _physics_process(delta):
	velocity = (Vector2(0, get_opponent_direction()) * speed)
	velocity = move_and_slide(velocity)
