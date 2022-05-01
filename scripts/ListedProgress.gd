extends TextureProgress

const listed_icon_size_x = 66
const listed_icon_left_offset = 20
const listed_icon_right_offset = 110

func _ready():
    pass

func _process(delta):
    $ListedIcon.position.x = listed_icon_size_x + listed_icon_left_offset \
                           + value * ((rect_size.x - listed_icon_size_x - listed_icon_right_offset) / 100) 
