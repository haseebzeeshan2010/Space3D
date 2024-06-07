extends Node3D

func _physics_process(delta):
	#position = Vector3(0,0.847,1600.3)
	#global_rotation = lerp(global_rotation, %direction_fire_smoother.global_rotation, delta)
	%Enemy_lock.look_at(%Enemy.global_position)
	global_rotation = lerp(global_rotation, %Ship_axis.global_rotation,delta*0.7)
	#global_position = %Projectile_launcher_position.global_position
	#print(global_position)
