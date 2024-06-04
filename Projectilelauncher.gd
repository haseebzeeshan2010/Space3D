#extends Node3D
#
#func _physics_process(delta):
	##global_position = %Ship_axis.global_position + Vector3(0,5.075,5.968)
	##var T=global_transform.looking_at(%Camera3D.new_pos, Vector3(0,1,0))
	##global_transform.basis.y=lerp(global_transform.basis.y, T.basis.y, delta*2)
	##global_transform.basis.x=lerp(global_transform.basis.x, T.basis.x, delta*2)
	##global_transform.basis.z=lerp(global_transform.basis.z, T.basis.z, delta)
	##var angle = rotation
	##print(move_toward(%Projectile_launcher_position.global_position,20,20))

extends Node3D

func _physics_process(delta):
	#global_position = %Ship_axis.global_position + Vector3(0,5.075,5.968)
	#var T=global_transform.looking_at(%Camera3D.new_pos, Vector3(0,1,0))
	#global_transform.basis.y=lerp(global_transform.basis.y, T.basis.y, delta*2)
	#global_transform.basis.x=lerp(global_transform.basis.x, T.basis.x, delta*2)
	#global_transform.basis.z=lerp(global_transform.basis.z, T.basis.z, delta)
	#var angle = rotation
	#print(%direction_fire_smoother.get_rotation())
	var r = Vector3(clamp(%direction_fire_smoother.rotation.x, -0.10,4), %direction_fire_smoother.rotation.y, %direction_fire_smoother.rotation.z)
	print(r)
	rotation = lerp(rotation, r, delta*2)
	
	%direction_fire_smoother.look_at(%Projectile_launcher_position.global_position)
	pass
