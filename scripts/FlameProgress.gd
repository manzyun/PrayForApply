extends TextureProgress

const flame_icon_size_y = 53
const listed_icon_bottom_offset = 24
const listed_icon_Top_offset = 64

func _ready():
    pass

func _process(delta):
    $FlameIcon.position.y = rect_size.y - flame_icon_size_y - listed_icon_bottom_offset \
                             - value * ((rect_size.y - flame_icon_size_y - listed_icon_Top_offset ) / 100)
