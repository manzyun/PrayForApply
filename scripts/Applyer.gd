extends Node2D

onready var animated_sprite_body = $Body
onready var animated_sprite_head = $Head

signal graphics_pare

func _ready():
	pass
	
func _generate_applyer_graphics(var dict):

	var rng = RandomNumberGenerator.new()
	rng.randomize() 
	
	var body
	var head
	var applyer_status = dict
	
	if applyer_status["gender"] == 0:
		body = rng.randi_range(0, 1)
		animated_sprite_body.frame = body
		head = rng.randi_range(0, 7)
		animated_sprite_head.frame = head
	else:
		body = rng.randi_range(2, 3)
		animated_sprite_body.frame = body
		head = rng.randi_range(8, 15)
		animated_sprite_head.frame = head
		
		# ここでResume.gdに求職者の画像のインデックスを渡そう！
		
		if applyer_status["edu"] == "アート専門学校 3Dアーティストコース 卒業":
			head = -1
			body = -1
			pass
	
		if applyer_status["edu"] == "アート専門学校 イラストレーターコース 卒業":
			head = -1
			body = -1
			pass
	
		if applyer_status["edu"] == "アート専門学校 デジタルサウンドコース 卒業":
			head = -1
			body = -1
			pass
	
		if applyer_status["edu"] == "デジタル専門学校 卒業":
			head = -1
			body = -1
			pass
	
		if applyer_status["edu"] == "芸術大学 芸術学部 卒業":
			head = -1
			body = -1
			pass
	
		if applyer_status["workhis"] == "未経験":
			head = -1
			body = -1
			pass
	
		if applyer_status["workhis"] == "プログラマー 経験年数3年以上":
			head = -1
			body = -1
			pass
	
		if applyer_status["workhis"] == "プログラマー 経験年数10年以上":
			head = -1
			body = -1
			pass
	
		if applyer_status["workhis"] == "ゲーム会社勤務(PG)":
			head = -1
			body = -1
			pass
	
		if applyer_status["workhis"] == "2Ｄデザイン 経験年数10年以上":
			head = -1
			body = -1
			pass
	
		if applyer_status["license"] == "色彩検定2級":
			head = -1
			body = -1
			pass
	
		if applyer_status["license"] == "CAD技能検定一級":
			head = -1
			body = -1
			pass
	
		if applyer_status["license"] == "blender検定一級":
			head = -1
			body = -1
			pass

	emit_signal("graphics_pare", body, head)
