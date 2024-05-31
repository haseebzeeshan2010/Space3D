extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var T=global_transform.looking_at(%Spaceship.global_transform.origin, Vector3(0,1,0))
	global_transform.basis.y=lerp(global_transform.basis.y, T.basis.y, delta*5)
	global_transform.basis.x=lerp(global_transform.basis.x, T.basis.x, delta*5)
	global_transform.basis.z=lerp(global_transform.basis.z, T.basis.z, delta*2)
	var angle = rotation
	#var current_pos = Vector2(global_position.x,global_position.z)
	#
	add_constant_force(Vector3(sin(angle.y), (%Spaceship.global_position.y - global_position.y)/-1000, cos(angle.y)) * -4)
	##constant_torque = Vector3(0,%Enemy_CoordinateCheck.get_angle_to(Vector2(%Spaceship.global_position.x, %Spaceship.global_position.z))*5,0)
	#%Enemy_CoordinateCheck.position = current_pos
	#%Enemy_CoordinateCheck.rotation = rotation.y
	#%Enemy_CoordinateCheck.rotation = %Enemy_CoordinateCheck.get_angle_to(Vector2(%Spaceship.global_position.x, %Spaceship.global_position.z))
	print(%Spaceship.global_position.y - global_position.y)
	
	#position.y = %Enemy_CoordinateCheck.rotation
	pass

