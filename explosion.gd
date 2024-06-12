extends Node3D
#
func _physics_process(delta):
	#%GPUParticles3D.set_emitting(true)
	set_scale(scale-Vector3(5*delta,5*delta,5*delta))
	if scale.x < 0.1:
		queue_free()

#
#func _on_gpu_particles_3d_finished():
	#queue_free()
	#pass # Replace with function body.
