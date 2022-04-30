extends CanvasLayer

signal generate_job_seeker
signal end_game

func _ready():
	pass

func _on_GenerateButton_pressed():
	emit_signal("generate_job_seeker")
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/ending_HUD.tscn")
	emit_signal("end_game")
