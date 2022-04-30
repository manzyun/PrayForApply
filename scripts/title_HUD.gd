extends CanvasLayer

signal start_game

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/main_HUD.tscn")
	emit_signal("start_game")
