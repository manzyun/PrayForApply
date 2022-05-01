extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const flame_icon_size_y = 53
const listed_icon_bottom_offset = 24
const listed_icon_Top_offset = 64

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	$FlameIcon.position.y = rect_size.y - flame_icon_size_y - listed_icon_bottom_offset \
 							- value * ((rect_size.y - flame_icon_size_y - listed_icon_Top_offset ) / 100)
