extends Node2D

var directionx = 0
var directiony = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var viewportsizex = get_viewport_rect().size.x/2
	var viewportsizey = get_viewport_rect().size.y/2
	var mouse_x = get_viewport().get_mouse_position().x
	var mouse_y = get_viewport().get_mouse_position().y
	directionx = viewportsizex - mouse_x
	directiony = viewportsizey - mouse_y
	#print(directionx, " ",directiony)
	pass
