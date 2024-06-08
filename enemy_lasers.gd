extends RigidBody3D

@onready var bullet_explosion = preload("res://explosion.tscn")

func _physics_process(delta):
	linear_velocity = global_transform.basis.z * -1 * 350
	#print(global_position)

func _on_timer_timeout():
	queue_free()
	pass # Replace with function body.


func _on_laser_collision_body_entered(body):
	var projectile = bullet_explosion.instantiate()
	#projectile.position = position
	print(body.to_local(global_position))
	#projectile.position = (projectile.global_position - body.global_position)
	projectile.position = body.to_local(%MeshInstance3D2.global_position)
	body.add_sibling(projectile)
	
	queue_free()
	pass # Replace with function body.
