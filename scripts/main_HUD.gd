extends CanvasLayer

signal generate_applyer_status
signal posting_start

# 求職者の面接結果
signal player_input

func _ready():
	update_flame_progress(0)
	update_listed_progress(0)
	pass
	
func _calc_score(var player_input):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	match player_input:
		0:
			update_listed_progress(15)
		1:
			update_flame_progress(15)
	pass
	
func init_flame_progress(flame_point):
	$FlameProgress.value = flame_point
	
func init_listed_progress(listed_point):
	$ListedProgress.value = listed_point
	
func update_flame_progress(flame_point):
	$FlameProgress.value += flame_point
	
func update_listed_progress(listed_point):
	$ListedProgress.value += listed_point

func _on_apply_pressed():
	emit_signal("generate_applyer_status")
	emit_signal("posting_start")
	emit_signal("player_input", 0)
	pass

func _on_stay_pressed():
	emit_signal("generate_applyer_status")
	emit_signal("posting_start")
	emit_signal("player_input", 1)
	pass

func _on_pray_pressed():
	emit_signal("generate_applyer_status")
	emit_signal("posting_start")
	emit_signal("player_input", 2)
	pass
