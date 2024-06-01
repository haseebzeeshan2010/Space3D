extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
# Called every frame. 'delta' is the elapsed time since the previous frame
	var direction = rotation
	position += direction * 50 * delta * 1.5
	pass
