extends TileMap

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	var mousePos = get_viewport().get_mouse_position()
	var loc = world_to_map(mousePos)
	var cell = get_cell(loc.x, loc.y)
	
	if cell != -1:
		print(self.tile_set.tile_get_name(cell))
	else:
		set_cell(loc.x, loc.y, 1)
