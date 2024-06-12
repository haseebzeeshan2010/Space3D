extends RigidBody3D
const bullet_explosion = preload("res://explosion.tscn")
#@onready var bullet_explosion = preload("res://explosion.tscn")

func _physics_process(delta):
	linear_velocity = global_transform.basis.z * -1 * 300
	#print(global_position)

func _on_timer_timeout():
	queue_free()
	pass # Replace with function body.


func _on_laser_collision_body_entered(body):
	#
	var p_position = global_position
	var projectile = bullet_explosion.instantiate()
	##projectile.position = position
	#
	##
	print("Detected")
	projectile.position = body.to_local(p_position)
	body.add_sibling(projectile)
	#%GPUParticles3D.set_emitting(true)
	
	queue_free()
	pass # Replace with function body.


func _on_area_3d_body_entered(body):
	pass # Replace with function body.
