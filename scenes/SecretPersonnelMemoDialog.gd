extends ColorRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_white_list()
	set_black_list()
	pass

func set_white_list():
	$WhiteList.set_text_colar(Color(0.0, 0.0 ,0.0))
	
func set_black_list():
	$BlackList.set_text_colar(Color(1.0, 1.0 ,1.0))
	$BlackList/LastEducationLabel.text = "底辺学歴(評価対象外)"
	$BlackList/WorkHistoryLabel.text = "体育会系会社(評価対象外)"
	$BlackList/LicenseLabel.text = "無意味資格(評価対象外)"

func _on_TextureButton_pressed():
	visible = true

func _on_ExitButton_pressed():
	visible = false
