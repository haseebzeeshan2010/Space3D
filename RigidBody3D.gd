extends RigidBody3D
@onready var bullet_scene = preload("res://character_laser.tscn")
var impulse_strength = 0
var thrust = 70

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):

	
	impulse_strength = 38
	

	constant_torque = Vector3(0,clamp(float(%CoordinateCheck.directionx/500),-0.2735,0.2735)*2000,0)
	

	
		
	#SHIP YAW	
	%Ship_axis.rotation.z = lerp(%Ship_axis.rotation.z, clamp(float(%CoordinateCheck.directionx/1000),-0.2735,0.2735) , delta*2)
	%Ship_axis.rotation.x = lerp(%Ship_axis.rotation.x, clamp(float(%CoordinateCheck.directiony/1500),-0.2,0.2) , delta*2)
	
	#%ProjectileLauncher.look_at(%Enemy.global_position)
	
	#if Input.is_action_pressed("mouse_click"):
		#thrust = 200
		#apply_central_force(Vector3(0,%CoordinateCheck.directiony/10,0))
		#
	#else:
	thrust = 30
	apply_central_force(Vector3(0,%CoordinateCheck.directiony,0)*200)
	
	linear_velocity = global_transform.basis.z * -1 * thrust
	
	
	if Input.is_action_pressed("mouse_click"):
		%EnergyBar.set_value(%EnergyBar.get_value() - 10 * delta)
	else:
		%EnergyBar.set_value(%EnergyBar.get_value() + 5 * delta)
	
	print(%EnergyBar.get_value())
	if %EnergyBar.get_value() == 100:
		%HealthBar.set_value(%HealthBar.get_value() + 5 * delta)
	

func _on_heat_warn_body_entered(body):
	print("TOOHOOTT")
	pass # Replace with function body.


func _on_gravity_warn_body_entered(body):
	print("NOOOOO")
	pass # Replace with function body.





func _on_timer_timeout_char():
	if Input.is_action_pressed("mouse_click"):
		var projectile = bullet_scene.instantiate()
		projectile.position = %ProjectileLauncher.position
		projectile.rotation = %ProjectileLauncher.rotation
		%ProjectileLauncher.add_sibling(projectile)
		

