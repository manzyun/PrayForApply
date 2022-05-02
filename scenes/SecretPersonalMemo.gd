extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	set_text_colar(Color(0.2, 1.0, 0.7))
#	pass

func set_text_colar(text_color):
    $LastEducationLabel.add_color_override("font_color",  text_color)
    $LastEducationList.add_color_override("font_color",  text_color)
    $WorkHistoryLabel.add_color_override("font_color",  text_color)
    $WorkHistoryList.add_color_override("font_color",  text_color)
    $LicenseLabel.add_color_override("font_color",  text_color)
    $LicenseList.add_color_override("font_color",  text_color)
