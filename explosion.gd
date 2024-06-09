extends Node3D

func _process(delta):
	set_scale(scale-Vector3(5*delta,5*delta,5*delta))
	if scale.x < 0.1:
		queue_free()
