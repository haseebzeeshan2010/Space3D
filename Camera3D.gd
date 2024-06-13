extends Camera3D


func _on_direction_plane_input_event(camera, event, position, normal, shape_idx):
	%Projectile_launcher_position.position = position
	print(position)
	pass # Replace with function body.
