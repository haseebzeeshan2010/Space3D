extends Node3D
func _physics_process(delta):

	look_at(%Projectile_launcher_position.global_position)
	
