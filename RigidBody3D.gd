extends RigidBody3D

var impulse_strength = 0
var thrust = 70

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#rotation = Vector3(Vector2((get_viewport().get_mouse_position() - position.xy).angle), 0)
	#print(get_angle_to(get_viewport().get_mouse_position()))
	#set_linear_damp(1.4)
	impulse_strength = 38
	var m = %CoordinateCheck.get_global_mouse_position()
	var aim_speed = deg_to_rad(1)
	#print(%Node2D.viewportsize)
	
	#print(rotation.z)
	constant_torque = Vector3(0,clamp(float(%CoordinateCheck.directionx/5000),-0.2735,0.2735),0)
	
	
	#print(%CoordinateCheck.directiony)
	#if %CoordinateCheck.directiony > 0:
		#apply_central_force(Vector3(0,20,0))
	#else:
		#apply_central_force(Vector3(0,-20,0))
		
	
		
	#SHIP YAW	
	%Ship_axis.rotation.z = lerp(%Ship_axis.rotation.z, clamp(float(%CoordinateCheck.directionx/1000),-0.2735,0.2735) , delta*2)
	%Ship_axis.rotation.x = lerp(%Ship_axis.rotation.x, clamp(float(%CoordinateCheck.directiony/1500),-0.2,0.2) , delta*2)
	
	#%ProjectileLauncher.look_at(%Enemy.global_position)
	
	var angle = rotation
	
	#if Input.is_action_pressed("mouse_click"):
		#thrust = 200
		#apply_central_force(Vector3(0,%CoordinateCheck.directiony/10,0))
		#
	#else:
	thrust = 70
	apply_central_force(Vector3(0,%CoordinateCheck.directiony/20,0))
	
	apply_central_force(Vector3(sin(angle.y), 0, cos(angle.y)) *-thrust)


func _on_heat_warn_body_entered(body):
	print("TOOHOOTT")
	pass # Replace with function body.


func _on_gravity_warn_body_entered(body):
	print("NOOOOO")
	pass # Replace with function body.
