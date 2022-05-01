extends CanvasLayer

signal generate_job_seeker
signal posting_start

func _ready():
	pass

func _on_GenerateButton_pressed():
	emit_signal("generate_job_seeker")

func _process(delta):
	update_flame_progress(50)
	update_listed_progress(50)
	
func update_flame_progress(flame_point):
	$FlameProgress.value = flame_point

func update_listed_progress(listed_point):
	$ListedProgress.value = listed_point
