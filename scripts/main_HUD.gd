extends CanvasLayer

signal generate_job_seeker
signal end_game
signal posting_start

func _ready():
	pass

func _on_GenerateButton_pressed():
	emit_signal("generate_job_seeker")
	pass

func _on_EndButton_pressed():
	get_tree().change_scene("res://scenes/ending_HUD.tscn")
	emit_signal("end_game")

func _process(delta):
	update_flame_progress(50)
	
func update_flame_progress(flame_point):
	$FlameProgress.value = flame_point
