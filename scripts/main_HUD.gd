extends CanvasLayer

signal generate_job_seeker

func _ready():
	pass

func _on_GenerateButton_pressed():
	emit_signal("generate_job_seeker")
	pass

func _process(delta):
	update_flame_progress(50)
	
func update_flame_progress(flame_point):
	$FlameProgress.value = flame_point
