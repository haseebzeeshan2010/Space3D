extends Camera3D

var new_pos = 0
func _physics_process(delta):
	
	shoot_ray()

func shoot_ray():
	var mouse_pos = get_viewport().get_mouse_position()
	var ray_lenght = 100
	var from = project_ray_origin(mouse_pos)
	var to = from + project_ray_normal(mouse_pos) * ray_lenght
	var space = get_world_3d().direct_space_state
	var ray_query = PhysicsRayQueryParameters3D.new()
	ray_query.from = from
	ray_query.to = to
	var raycast_results = space.intersect_ray(ray_query)
	
	
	if !raycast_results.is_empty():
		new_pos = Vector3(raycast_results["position"].x, raycast_results["position"].y, global_position.z-41)
		#print(new_pos)
		%Projectile_launcher_position.position = raycast_results["position"]
	#set_global_transform(get_parent().get_global_transform())
	
