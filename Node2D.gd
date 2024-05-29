extends Node2D

var direction = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#look_at(get_global_mouse_position())
	var viewportsize = get_viewport_rect().size.x/2
	var mouse_x = get_viewport().get_mouse_position().x
	direction = viewportsize - mouse_x
	print(direction)
	pass
