extends CharacterBody2D


var speed = 300
var velocityy = Vector2(0,1)	


func _physics_process(delta):
	var collision_info = move_and_collide(velocityy.normalized()*delta*speed)
	
	
