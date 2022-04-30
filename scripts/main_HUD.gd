extends CanvasLayer

signal generate_job_seeker

var max_listed_gauge
var start_pos_listed_gauge

func _ready():
	pass

func _on_GenerateButton_pressed():
	emit_signal("generate_job_seeker")
	pass

func _process(delta):
	update_listed_progress(80)
	
func update_listed_progress(listed_point):
	$ListedProgress.value = listed_point
	
