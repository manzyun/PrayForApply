extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/title_HUD.tscn")
	emit_signal("back_title")

func show_bad_end():
	$EndLogo.texture.resource_path = "res://textures/badend_logo.png"
	
func show_good_end():
	$EndLogo.texture.resource_path = "res://textures/goodend_logo.png"
	
func show_time_out():
	$EndLogo.texture.resource_path = "res://textures/normalend_logo.png"
