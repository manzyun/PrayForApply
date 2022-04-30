extends TextureProgress


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const flame_icon_size_y = 64

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	$FlameIcon.position.y = rect_size.y - flame_icon_size_y + rect_position.y - value * (rect_size.y / 100)
