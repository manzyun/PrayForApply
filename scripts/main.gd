extends Node2D

signal generate_applyer_graphics
signal play_or_apply_rating

var g_applyer_graphics_pare = []

signal good_end

signal bad_end

signal time_out

func _ready():
	pass
	
func construct_prayer():
	var result = 0
	
func construct_applyer():
	var applyer_dict = {
		"name": "nanashi",
		"age": 0,
		"gender": 0,
		"edu": "hoisotsu",
		"workhis": "neet",
		"license": "nashi",
		"occupation": "nashi",
		}
	return applyer_dict


func _applyer_status_generator():
	var rng = RandomNumberGenerator.new()
	rng.randomize()    
	var applyer_status_dict = construct_applyer()


	var surname = [
		"佐藤",
		"鈴木",
		"高橋",
		"本間",
		"中島",
		"天元",
		"柳川",
		"大貫",
		"林",
		"二谷",
		"高坂",
		"松本",
		"斎藤",
		"井上",
		"木下",
		"田所",
		"久保",
		"杉田",
		"曽山",
		"中村",
		"相沢",
		"相澤",
		"片岡",
		"亜田岡",
		"森",
		"阿部",
		"池田",
		"千葉",
		"花山",
		"ビダン",
		"田中",
		"木村",
		"大槻",
		"土江田",
		"吉田",
		"沼田",
		"後藤",
		"岡田",
		"長谷川",
		"前田",
		"石川",
		"山下",
		"山上",
		"橋本",
		"阿倍",
		"沼川",
		"沼里",
		"加藤",
		"三浦",
		"西村",
		"山崎",
	   ]
	var firstname = [
		"律",
		"晃",
		"ピカチュウ",
		"ヤクチュウ",
		"智",
		"真由",
		"みつね",
		"真一",
		"新一",
		"薫",
		"美咲",
		"カミーユ",
		"侑哉",
		"晋三",
		"一二三",
		"春菜",
		"はるか",
		"さくらこ",
		"かおるこ",
		"すみれこ",
		"沙織",
		"葵",
		"碧",
		"舞",
		"まい",
		"瞳",
		"あやか",
		"零",
		"黎",
		"健太郎",
		"健二郎",
		"健次郎",
		"ゆうこ",
		"優子",
		"敦子",
		"敦",
		"こういち",
		"康一",
		"康一朗",
		"真琴",
		"ひろゆき",
		"誠",
		"みのりこ",
		"穣子",
		"娘々",
		"なるみ",
		"あや",
		"文",
		"彩",
		"勲",
		"十四郎",
		"俊弘",
		"準",
		"潤",
		"純",
		"淳一",
		"順一",
		"愛",
		"みほ",
		"みき",
	   ]
	var fullname = surname[rng.randi() % surname.size()]\
					+ " "\
					+ firstname[rng.randi() % firstname.size()]                           
	var age = rng.randi_range(0, 100)
	var gender = rng.randi_range(0,1)
	var edu_list = [
		"中卒",
		"高卒",
		"アート専門学校 3Dアーティストコース 卒業",
		"アート専門学校 イラストレーターコース 卒業",
		"アート専門学校 デジタルサウンドコース 卒業",
		"デジタル専門学校 卒業",
		"芸術大学 芸術学部 卒業",
		"芸術大学 芸術学部 中退",
		"情報大学 情報学部 卒業",
		"情報大学 情報学部 中退",
		"一流大学 理工学部 中退",
		"三流大学 経済学部 卒業",
		"三流大学 経済学部 中退",
		"一流大学 文学部 卒業",
		"一流大学 文学部 中退",
		"三流大学 総合人文学部 卒業",
		"三流大学 総合人文学部 中退",
	   ] 
	var edu = edu_list[rng.randi() % edu_list.size()]
	var workhis_list = [
		"未経験",
		"アルバイトリーダー経験",
		"インターンシップ経験",
		"プログラマー 経験年数3年以上",
		"プログラマー 経験年数10年以上",
		"ゲーム会社勤務(PG)",
		"2Ｄデザイン 経験年数3年以上",
		"2Ｄデザイン 経験年数10年以上",
		"ゲーム会社勤務(2D)",
		"3Dデザイン 経験年数3年以上",
		"3Dデザイン 経験年数10年以上",
		"サウンド 経験年数3年以上",
		"サウンド 経験年数10年以上",
		"ゲーム会社勤務(サウンド)",
		"デザイン会社勤務",
		"小説家",
		"広告代理店勤務",
	   ]
	var workhis = workhis_list[rng.randi() % workhis_list.size()]
	var license_list = [
		"なし",
		"普通自動車免許",
		"Adobe",
		"パソコン検定一級",
		"色彩検定2級",
		"CAD技能検定一級",
		"blender検定一級",
		"カラーコーディネイター2級",
		"実用英語技能検定準2級",
	   ]
	var license = license_list[rng.randi() % license_list.size()]
	var occupation_list = [
		"総務",
		"営業",
		"プランナー",
		"ライター",
		"2Dデザイン",
		"3Dデザイン",
		"サウンド",
	   ] 
	var occupation = occupation_list[rng.randi() % occupation_list.size()]
	var employment = rng.randi_range(0, 3)
	applyer_status_dict["name"] = fullname
	applyer_status_dict["age"] = age
	applyer_status_dict["gender"] = gender
	applyer_status_dict["edu"] = edu
	applyer_status_dict["workhis"] = workhis
	applyer_status_dict["license"] = license
	applyer_status_dict["occupation"] = occupation
	applyer_status_dict["employment"] = employment
	emit_signal("generate_applyer_graphics", applyer_status_dict)
	pass
	
func _on_Applyer_graphics_pare(var body, var head):
	var applyer_graphics = []
	applyer_graphics.append(body)
	applyer_graphics.append(head)
	# Sorry.
	g_applyer_graphics_pare = applyer_graphics
	pass
	
# ここでプレイヤー操作の評価を行う
# 状態 -> 0:採用, 1:お祈り, 2:保留
func _game_controller(var status):  

	var correct = 2
	var applyer_graphics = g_applyer_graphics_pare
	if applyer_graphics[0] == 1:
		correct = 1
	if applyer_graphics[1] == 2:
		correct = 1
	if applyer_graphics[1] == 5:
		correct = 1
	if applyer_graphics[1] == 13:
		correct = 1

	if applyer_graphics[0] == -1:
		correct = 1

	if status == correct:
		# 上場ゲージを伸ばす
		#print("上場")
		emit_signal("play_or_apply_rating", 0)
	else:
		# 炎上ゲージを伸ばす
		#print("炎上")
		emit_signal("play_or_apply_rating", 1)
		
	print_debug(correct)
	pass

# ending表示
# 必要なところで呼んでください
func end_game(end):
	
	$main_HUD/FlameProgress.hide()
	$main_HUD/ListedProgress.hide()
	$main_HUD/apply.hide()
	$main_HUD/pray.hide()
	$main_HUD/stay.hide()
	$ending_HUD.show()
	if end == 0:
		emit_signal("time_out")
	if end == 1:
		emit_signal("good_end")
		print("good")
	if end == 2:
		emit_signal("bad_end")
		print("bad")
	pass


func _on_main_generate_applyer_graphics():
	pass # Replace with function body.
