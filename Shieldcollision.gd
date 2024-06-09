extends MeshInstance3D


func _on_static_body_3d_body_entered(body):
	print("Col")
	body.queue_free()
	pass # Replace with function body.
