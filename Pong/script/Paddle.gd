extends KinematicBody2D


export (int)var speed = 60
var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("KEY_W"):
		velocity.y -= 10
	if Input.is_action_pressed("KEY_S"):
		velocity.y += 10
	velocity = velocity * speed


func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
