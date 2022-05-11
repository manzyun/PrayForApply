extends CanvasLayer

signal generate_applyer_status
signal posting_start

# 求職者の面接結果
signal apply    # 状態0
signal stay     # 状態1
signal pray     # 状態2

func _ready():
	update_flame_progress(0)
	update_listed_progress(0)
	pass
	
func _calc_score(score):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	if (score == 0):
		update_listed_progress(15)
	if(score == 1):
		if (rng.randi_range(0, 1) == 0):
			update_flame_progress(rng.randi_range(0, 25))
		else:
			update_listed_progress(rng.randi_range(0, 5))
	if (score == 2):
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
	emit_signal("apply", 0)
	pass

func _on_stay_pressed():
	emit_signal("generate_applyer_status")
	emit_signal("posting_start")
	emit_signal("stay", 1)
	pass

func _on_pray_pressed():
	emit_signal("generate_applyer_status")
	emit_signal("posting_start")
	emit_signal("pray", 2)
	pass
