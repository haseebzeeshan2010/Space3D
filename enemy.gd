extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	look_at(%Spaceship.global_position)
	#apply_central_force(Vector3(sin(rotation.y), 0, cos(rotation.y)) *-100)
	pass
