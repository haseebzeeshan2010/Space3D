extends RigidBody3D


func _physics_process(delta):
	linear_velocity = global_transform.basis.z * -1 * 350


func _on_timer_timeout():
	queue_free()
	pass # Replace with function body.
