extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$BadLogo.hide()
	$GoodLogo.hide()
	$TimeOutLogo.hide()
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/title_HUD.tscn")

func show_bad_end():
	$BadLogo.show()
	display_node()
	
func show_good_end():
	$GoodLogo.show()
	display_node()
	
func show_time_out():
	$TimeOutLogo.show()
	display_node()
	
func display_node():
	$TextureRect.show()
	$TitleButton.show()
