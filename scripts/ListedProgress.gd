extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const listed_icon_size_x = 66
const listed_icon_left_offset = 20
const listed_icon_right_offset = 110

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	$ListedIcon.position.x = listed_icon_size_x + listed_icon_left_offset \
						   + value * ((rect_size.x - listed_icon_size_x - listed_icon_right_offset) / 100) 
