extends RigidBody3D

var impulse_strength = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#rotation = Vector3(Vector2((get_viewport().get_mouse_position() - position.xy).angle), 0)
	#print(get_angle_to(get_viewport().get_mouse_position()))
	#set_linear_damp(1.4)
	impulse_strength = 38
	var m = %Node2D.get_global_mouse_position()
	var aim_speed = deg_to_rad(1)
	#print(%Node2D.viewportsize)
	
	constant_torque = Vector3(0,%Node2D.direction/10000,0)
	#if %Node2D.direction > 0:
		#constant_torque = Vector3(0,0.1,0)
	#else:
		#constant_torque = Vector3(0,-0.1,0)
	var angle = rotation
	
	
	apply_central_force(Vector3(sin(angle.y), sin(angle.x), cos(angle.y)) *-250)
