extends KinematicBody2D

export (int)var speed = 100
var velocity = Vector2(200,200)


func _process(delta):
	var collision_info = move_and_collide(velocity * speed * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
