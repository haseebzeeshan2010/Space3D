extends Node3D

func _process(delta):
	#print(%Camera3D.global_rotation,"  ", global_rotation)
	#global_rotation = Vector3(global_rotation.x, %Camera3D.global_rotation.y, global_rotation.z)
	look_at(%Camera3D.global_position)
