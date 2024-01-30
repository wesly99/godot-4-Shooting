extends CharacterBody2D


const bulletPath = preload("res://bullet.tscn")

func _ready():
	pass
	
func _process(delta):
	if Input.is_action_just_pressed('ui_accept'):
		print("haha")
		shoot()
	$Node2D.look_at(get_global_mouse_position())
func shoot():
	var bullet = bulletPath.instantiate()
	get_parent().add_child(bullet)
	bullet.position = $Node2D/Marker2D.global_position
	print(bullet.position)
	print(typeof(get_global_mouse_position()))
	print(typeof(get_global_mouse_position() - bullet.position))
	
	bullet.get_child(0).velocityy = get_global_mouse_position() - bullet.get_child(0).position
	#bullet.velocityy = get_global_mouse_position().normalized() - bullet.position
 	#bullet.get_child(0).velocityy= get_global_mouse_position().normalized()- bullet.get_child(0).position
